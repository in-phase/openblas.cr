require "./raw_bindings/lib_cblas"

module OpenBLAS
  {% if flag?(:darwin) %}
  @[Link(framework: "Accelerate")]
  {% else %}
  @[Link("openblas")]
  {% end %}
  lib CBLAS

    # typedef CBLAS_ORDER CBLAS_LAYOUT;
    alias Layout = Order

    # typedef enum CBLAS_ORDER     {CblasRowMajor=101, CblasColMajor=102} CBLAS_ORDER;
    enum Order
      RowMajor = 101
      ColMajor = 102
    end

    # typedef enum CBLAS_TRANSPOSE {CblasNoTrans=111, CblasTrans=112, CblasConjTrans=113, CblasConjNoTrans=114} CBLAS_TRANSPOSE;
    enum Transpose
      NoTrans = 111
      Trans = 112
      ConjTrans = 113
      ConjNoTrans = 114
    end

    # typedef enum CBLAS_UPLO      {CblasUpper=121, CblasLower=122} CBLAS_UPLO;
    enum UpLo
      Upper = 121
      Lower = 112
    end

    # typedef enum CBLAS_DIAG      {CblasNonUnit=131, CblasUnit=132} CBLAS_DIAG;
    enum Diag
      NonUnit = 131
      Unit = 132
    end

    # typedef enum CBLAS_SIDE      {CblasLeft=141, CblasRight=142} CBLAS_SIDE;
    enum Side
      Left = 141
      Right = 142
    end

    struct ComplexDouble
      real : Float64
      imag : Float64
    end
  end
end
