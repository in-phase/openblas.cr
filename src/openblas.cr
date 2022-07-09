require "./raw_bindings/lib_core"
require "./raw_bindings/lib_cblas"

module OpenBLAS
  @[Link("openblas")]
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

# Example:
module OpenBLAS
  m = n = k = 2
  a = Slice[1f64, 2f64, 3f64, 4f64]
  b = Slice[0f64, 1f64, -1f64, Float64.zero]
  c = Slice.new(4, 0f64)

  layout = CBLAS::Layout::RowMajor
  transA = CBLAS::Transpose::NoTrans
  transB = CBLAS::Transpose::NoTrans

  CBLAS.dgemm(layout, transA, transB, m,n,k, 1.0, a, k, b, n, 1.0, c, n)

  puts c
end
