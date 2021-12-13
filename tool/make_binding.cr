# line = "float int cblas_sdot(OPENBLAS_CONST blasint n, OPENBLAS_CONST float  *x, OPENBLAS_CONST blasint incx, OPENBLAS_CONST float  *y, OPENBLAS_CONST blasint incy);"
WORD = /[^(),\s]+/
FUNC_QUALIFIER = /(?:#{WORD}\s+(?!\())/
FUNC_NAME = /#{WORD}(?=\s*\()/
FUNC_DECLARATION = /^(#{FUNC_QUALIFIER}+)(#{FUNC_NAME})/ # #{function_args};$/

VAR_QUALIFIER = FUNC_QUALIFIER
VAR_NAME = /#{WORD}(?=\s*[,\)])/


# exit 0

root = (Path[__DIR__] / "..").normalize

header_path = root / "lapack.h"
header = File.read_lines(header_path)
functions = find_functions(header)
puts functions.map(&.vars.map(&.[](0))).flatten.tally
puts functions[0].to_crystal
puts functions[0].get_module

# TODO
def get_crystal_type(c_type) : String
  # from blas: {"int" => 3, "size_t" => 1, "cpu_set_t*" => 1, "blasint" => 643, "float" => 153, "double" => 143, "void" => 268, "enum CBLAS_ORDER" => 112, "enum CBLAS_TRANSPOSE" => 75, "enum CBLAS_UPLO" => 78, "enum CBLAS_DIAG" => 32, "enum CBLAS_SIDE" => 14, "char" => 2, "float*" => 4, "double*" => 4, "bfloat16" => 10}
  case c_type
  when "blasint"
    "LibC::Int" # https://github.com/xianyi/OpenBLAS/blob/b0a590f4fe3abd5618e376d85f72ea00a9032683/common.h#L277
  end  
  "Int"
end

record CFunction, name : String, qualifiers : String, vars : Array(Tuple(String, String)), do
  def get_module : String
    prefix = @name[...@name.index("_")]

    case prefix
    when "blas"
       "BLAS"
    when "openblas"
       "OpenBLAS"
    when /lapack/i
       "LAPACK"
    else
      raise "Unrecognized prefix #{prefix}"
    end
  end

  def to_crystal : String
    varstring = (vars.map do |qual, name|
        "#{name} : #{get_crystal_type(qual)}"
    end).join(", ")
    
    cr_name = @name # TODO: change this based on our desired API
    cr_type = get_crystal_type(qualifiers)

    "fun #{cr_name} = #{@name}(#{varstring}) : #{cr_type}"
  end
end

# {"float" => 310, "double" => 310, "int" => 2377, "char" => 3492, "lapack_int" => 10642, "float*" => 2616, "lapack_int*" => 1259, "double*" => 2630, "lapack_complex_float*" => 1361, "lapack_complex_double*" => 1373, "const float*" => 468, "const double*" => 468, "const lapack_int*" => 324, "const lapack_complex_float*" => 432, "const lapack_complex_double*" => 432, "char*" => 76, "LAPACK_S_SELECT2" => 4, "LAPACK_D_SELECT2" => 4, "LAPACK_C_SELECT1" => 4, "LAPACK_Z_SELECT1" => 4, "LAPACK_S_SELECT3" => 6, "LAPACK_D_SELECT3" => 6, "LAPACK_C_SELECT2" => 6, "LAPACK_Z_SELECT2" => 6, "lapack_logical*" => 40, "const lapack_logical*" => 48, "lapack_complex_float" => 10, "lapack_complex_double" => 10, "lapack_logical" => 48}
# {"int" => 3, "size_t" => 1, "cpu_set_t*" => 1, "blasint" => 643, "float" => 153, "double" => 143, "void" => 268, "enum CBLAS_ORDER" => 112, "enum CBLAS_TRANSPOSE" => 75, "enum CBLAS_UPLO" => 78, "enum CBLAS_DIAG" => 32, "enum CBLAS_SIDE" => 14, "char" => 2, "float*" => 4, "double*" => 4, "bfloat16" => 10}
def parse_variables(line : String) : Array(Tuple(String, String))
  line.scan(/(#{VAR_QUALIFIER}+)(#{VAR_NAME})/).map do |match|
    _, qualifiers, name = match
    # qualiqualifiers
    {qualifiers.gsub("OPENBLAS_CONST", "").strip, name}
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

    # handling macros
    next if line.starts_with? "#"

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