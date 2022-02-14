require "ecr"
require "colorize"

WORD = /[^(),\s]+/
FUNC_QUALIFIER = /(?:#{WORD}\s+(?!\())/
FUNC_NAME = /#{WORD}(?=\s*\()/
FUNC_DECLARATION = /^(#{FUNC_QUALIFIER}+)(#{FUNC_NAME})/ # #{function_args};$/

VAR_QUALIFIER = FUNC_QUALIFIER
VAR_NAME = /#{WORD}(?=\s*[,\)])/

ROOT = (Path[__DIR__] / "..").normalize
HEADERS = {"cblas.h", "lapack.h"}
NAMESPACES = Hash(String, Array(CFunction)).new do |hash, missing_key|
  new_arr = [] of CFunction
  hash[missing_key] = new_arr
  new_arr
end

# HEADERS.each do |name|
{"cblas.h"}.each do |name|
  header_path = ROOT / name
  header = File.read_lines(header_path)

  find_functions(header).each do |func|
    NAMESPACES[func.namespace] << func
  end
end

NAMESPACES.each do |name, functions|
  puts OutputFile.new(name, functions)
end
# puts functions.map(&.vars.map(&.[](0))).flatten.tally

struct OutputFile
  @namespace : String
  @functions : Array(CFunction)

  def initialize(@namespace, @functions)
  end

  ECR.def_to_s({{__DIR__ + "/binding_template.ecr"}})
end

# TODO
def get_crystal_type(c_type) : String
  # from blas: {"int" => 3, "size_t" => 1, "cpu_set_t*" => 1, "blasint" => 643,
  # "float" => 153, "double" => 143, "void" => 268, "enum CBLAS_ORDER" => 112,
  # "enum CBLAS_TRANSPOSE" => 75, "enum CBLAS_UPLO" => 78, "enum CBLAS_DIAG" =>
  # 32, "enum CBLAS_SIDE" => 14, "char" => 2, "float*" => 4, "double*" => 4,
  # "bfloat16" => 10}

  # from lapack: {"float" => 310, "double" => 310, "int" => 2377, "char" =>
  # 3492, "lapack_int" => 10642, "float*" => 2616, "lapack_int*" => 1259,
  # "double*" => 2630, "lapack_complex_float*" => 1361,
  # "lapack_complex_double*" => 1373, "const float*" => 468, "const double*" =>
  # 468, "const lapack_int*" => 324, "const lapack_complex_float*" => 432,
  # "const lapack_complex_double*" => 432, "char*" => 76, "LAPACK_S_SELECT2" =>
  # 4, "LAPACK_D_SELECT2" => 4, "LAPACK_C_SELECT1" => 4, "LAPACK_Z_SELECT1" =>
  # 4, "LAPACK_S_SELECT3" => 6, "LAPACK_D_SELECT3" => 6, "LAPACK_C_SELECT2" =>
  # 6, "LAPACK_Z_SELECT2" => 6, "lapack_logical*" => 40, "const
  # lapack_logical*" => 48, "lapack_complex_float" => 10,
  # "lapack_complex_double" => 10, "lapack_logical" => 48}

  pointer_decoration = ""
  raw_type = c_type

  if asterisk_index = c_type.index('*')
    raw_type, pointer_decoration = c_type[0...asterisk_index], c_type[asterisk_index..]
  end

  raw_crystal_type =
    case raw_type
    when "size_t"
      "LibC::SizeT"
    when "int", "blasint"
      "LibC::Int"
    when "float"
      "LibC::Float"
    when "double"
      "LibC::Double"
    when "char"
      "LibC::Char"
    when "void"
      "Void"
    when "cpu_set_t"
      "Void"
    when "bfloat16"
      "UInt16"
    when .starts_with? "enum"
      case enum_name = raw_type.gsub("enum", "").strip
      when "CBLAS_ORDER"
        "CBLAS::Order"
      when "CBLAS_TRANSPOSE"
        "CBLAS::Transpose"
      when "CBLAS_UPLO"
        "CBLAS::UpLo"
      when "CBLAS_DIAG"
        "CBLAS::Diag"
      when "CBLAS_SIDE"
        "CBLAS::Side"
      else
        raw_type.colorize(:red).to_s
      end
    else
      raw_type.colorize(:red).to_s
    end

  raw_crystal_type + pointer_decoration
end

struct CFunction
  @qualifiers : String
  @vars : Array(Tuple(String, String))

  property c_name : String
  property namespace : String
  property name : String

  def initialize(@c_name, @qualifiers, @vars)
    @namespace, @name = convert_name
  end

  def convert_name : Tuple(String, String)
    # Hardcoded mappings for abnormal functions
    case @c_name
    when "goto_set_num_threads"
      return {"OpenBLAS", "goto_set_num_threads"}
    end

    # Most functions are prefixed by their identifier
    prefix, suffix = @c_name.split('_', limit: 2)

    namespace = case prefix
      when "openblas"
         "OpenBLAS::Core"
      when "cblas"
         "OpenBLAS::BLAS"
      when "lapack", "LAPACK"
         "OpenBLAS::LAPACK"
      else
        raise "Unrecognized prefix #{prefix}"
      end

    name = suffix.downcase

    {namespace, name}
  end

  def args
    @vars.map do |qual, name|
      "#{name} : #{get_crystal_type(qual)}"
    end.join(", ")
  end
end

def parse_variables(line : String) : Array(Tuple(String, String))
  # First, we deconstruct comma-separated list of variables into qualifiers and names
  line.scan(/(#{VAR_QUALIFIER}+)(#{VAR_NAME})/).map do |match|
    _, qualifiers, name = match
    
    # We don't care what types OpenBLAS is trying to keep as consts, so we
    # remove that information here.
    qualifiers = qualifiers.gsub("OPENBLAS_CONST", "").strip

    # Most variables that are pointers use an asterisk after the type, like int*.
    # However, this isn't consistent - some do int *name. This means that the
    # name includes some number of asterisks in certain cases. We have to fix
    # this here.
    if name.starts_with? '*'
      last_idx = name.rindex('*').not_nil!
      asterisks, name = name[0..last_idx], name[(last_idx + 1)..]
      qualifiers += asterisks
    end

    {qualifiers, name}
  end
end

# Things to keep in mind:
# - function definitions can be multiline, but the output array should have one string = one function
def find_functions(lines : Array(String)) : Array(CFunction)
  iter = lines.each
  funcs = [] of CFunction
#   lines_with_paren

  until (line = iter.next).is_a? Iterator::Stop
    line = line.as(String).strip
    
    # comment handling
    next if line.blank?
    next if line.starts_with? "//"

    if line.starts_with? "/*"
      until line.includes? "*/"
        maybe_line = iter.next
        raise "Unterminated block comment" if maybe_line.is_a? Iterator::Stop
        line = maybe_line.as(String)
      end

      next
    end

    # handle macros
    next if line.starts_with? "#"

    # ignore typedefs
    next if line.starts_with? "typedef"

    # Find out if we open a function here
    if match = FUNC_DECLARATION.match(line)
        _, func_qualifier, func_name = match
        func_qualifier = func_qualifier.strip
        # next unless func_name == "cblas_strmm" #TODO: remove

        # Stubs can be multiline, so this will collect lines until we find a semicolon.
      full_stub = String.build do |x|
        x << match.post_match
        until line.includes? ";"
          maybe_line = iter.next
          raise "Unterminated function" if maybe_line.is_a? Iterator::Stop
          line = maybe_line.as(String)
          x << line
        end
      end

      funcs << CFunction.new(func_name, func_qualifier, parse_variables(full_stub))
    end
  end

  funcs
end


# Find all #define; conduct search-and-replace
# Find function signatures
# pass them into a function that converts them into crystal function signatures
# - convert names
# - namespace things if we want to (OPENBLAS::, BLAS::, LAPACK::)
# - convert types int -> LibC::Int
# use ECR to build our binding file

# what's up with this:
# OPENBLAS_CONST enum CBLAS_ORDER order,

# type name(type var, type var, ...);

# function signatures look like 
# type name (*things in here*)(\n+);
