require "./raw_bindings/lib_lapack"

module OpenBLAS
  @[Link("lapack")]
  lib LAPACK
    struct ComplexDouble
      real : Float64
      imag : Float64
    end

    struct ComplexFloat
      real : Float32
      imag : Float32
    end
  end
end
