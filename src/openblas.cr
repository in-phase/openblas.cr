module Openblas
  VERSION = "0.1.0"

  @[Link("openblas")]
  lib CBLAS

      fun dgemm = cblas_dgemm(
          layout : LibC::Int,
          trans_a : LibC::Int,
          trans_b : LibC::Int,
          m : Int64,
          n : LibC::Int, 
          k : LibC::Int,
          alpha : Float64,
          a : Pointer(Float64),
          lda : LibC::Int,
          b : Pointer(LibC::Double),
          ldb : LibC::Int,
          beta : LibC::Double,
          c : Pointer(LibC::Double),
          ldc : LibC::Int
          )


  end




  m = n = k = 2
  a = Slice[1f64, 2f64, 3f64, 4f64]
  b = Slice[0f64, 1f64, -1f64, Float64.zero]
  c = Slice.new(4, 0f64)

  layout = 101
  transA = 111
  transB = 111

  CBLAS.dgemm(layout, transA, transB, m,n,k, 1.0, a, k, b, n, 1.0, c, n)

  puts c

  # typedef enum CBLAS_LAYOUT {CblasRowMajor=101, CblasColMajor=102} CBLAS_LAYOUT;
  # typedef enum CBLAS_TRANSPOSE {CblasNoTrans=111, CblasTrans=112, CblasConjTrans=113} CBLAS_TRANSPOSE;
  # typedef enum CBLAS_UPLO {CblasUpper=121, CblasLower=122} CBLAS_UPLO;
  # typedef enum CBLAS_DIAG {CblasNonUnit=131, CblasUnit=132} CBLAS_DIAG;
  # typedef enum CBLAS_SIDE {CblasLeft=141, CblasRight=142} CBLAS_SIDE;

  # void cblas_dgemm(CBLAS_LAYOUT layout, CBLAS_TRANSPOSE TransA,
  #                  CBLAS_TRANSPOSE TransB, const CBLAS_INDEX M, const CBLAS_INDEX N,
  #                  const CBLAS_INDEX K, const double alpha, const double *A,
  #                  const CBLAS_INDEX lda, const double *B, const CBLAS_INDEX ldb,
  #                  const double beta, double *C, const CBLAS_INDEX ldc);
end
