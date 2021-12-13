# void LAPACK_dgeqrfp(
#     lapack_int const* m, lapack_int const* n,
#     double* A, lapack_int const* lda,
#     double* tau,
#     double* work, lapack_int const* lwork,
    # lapack_int* info );

module Openblas
  VERSION = "0.1.0"

  @[Link("lapack")]
  lib LAPACK
      fun dgeqrfp = dgeqrfp_(
          m : LibC::Int*,
          n : LibC::Int*,
          a : LibC::Double*,
          lda : LibC::Int*,
          tau : LibC::Double*,
          work : LibC::Double*,
          lwork : LibC::Int*,
          info : LibC::Int* )
  end



  # int main()
  # {
  #     double a[4] = {0,2,2,-1};
  #     int m=2;
  #     int n=2;
  #     int info = 0;
  #     int lda = m;
  #     int lwork = n;
  #     double work[2];
  #     double tau[2];
  #     dgeqrfp_(&m, &n, a, &lda, tau, work, &lwork, &info);
  # }

  m = n = 2
  a = Slice[1f64, 2f64, 3f64, 4f64]
  # b = Slice[0f64, 1f64, -1f64, Float64.zero]
  # c = Slice.new(4, 0f64)

  # layout = 101
  # transA = 111
  # transB = 111
  tau = Slice[0f64, 0f64]
  lwork = 2
  LAPACK.dgeqrfp(pointerof(m), pointerof(n), a, pointerof(m), Slice[1f64, 1f64], tau, pointerof(lwork), out info)
  puts info
  puts tau

  # puts c

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
