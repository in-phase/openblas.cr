module OpenBLAS
  lib Core
    fun set_num_threads = openblas_set_num_threads(num_threads : LibC::Int)
    fun goto_set_num_threads = goto_set_num_threads(num_threads : LibC::Int)
    fun get_num_threads = openblas_get_num_threads()
    fun get_num_procs = openblas_get_num_procs()
    fun get_config = openblas_get_config()
    fun get_corename = openblas_get_corename()
    fun setaffinity = openblas_setaffinity(thread_idx : LibC::Int, cpusetsize : LibC::SizeT, cpu_set : Void*)
    fun get_parallel = openblas_get_parallel()
  end
end
