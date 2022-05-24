require "./raw_bindings/lib_lapack"

module OpenBLAS
  @[Link("lapack")]
  lib LAPACK
  end
end

module OpenBLAS
  # Example:
  m = n = 2
  a = Slice[1f64, 2f64, 3f64, 4f64]
  tau = Slice[0f64, 0f64]
  lwork = 2
  LAPACK.dgeqrfp(pointerof(m), pointerof(n), a, pointerof(m), Slice[1f64, 1f64], tau, pointerof(lwork), out info)
  puts info
  puts tau
end

# module Openblas
#   VERSION = "0.1.0"
# 
    # fun dgeqrfp = LAPACK_dgeqrfp(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
#   lib LAPACK
#       fun dgeqrfp = dgeqrfp_(
#           m : LibC::Int*,
#           n : LibC::Int*,
#           a : LibC::Double*,
#           lda : LibC::Int*,
#           tau : LibC::Double*,
#           work : LibC::Double*,
#           lwork : LibC::Int*,
#           info : LibC::Int* )
#   end
#   # int main()
#   # {
#   #     double a[4] = {0,2,2,-1};
#   #     int m=2;
#   #     int n=2;
#   #     int info = 0;
#   #     int lda = m;
#   #     int lwork = n;
#   #     double work[2];
#   #     double tau[2];
#   #     dgeqrfp_(&m, &n, a, &lda, tau, work, &lwork, &info);
#   # }
# 
# 
#   # puts c
# end
