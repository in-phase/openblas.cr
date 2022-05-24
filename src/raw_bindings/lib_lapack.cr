module OpenBLAS
  lib LAPACK
    fun lsame = lsame_(ca : LibC::Char*, cb : LibC::Char*, lca : LibC::Int, lcb : LibC::Int)
    # Excluded cbbcsd because the type `lapack_complex_float` is not defined in this library.
    fun dbbcsd = dbbcsd_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, jobv2t : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, theta : LibC::Double*, phi : LibC::Double*, u1 : LibC::Double*, ldu1 : LibC::Int*, u2 : LibC::Double*, ldu2 : LibC::Int*, v1t : LibC::Double*, ldv1t : LibC::Int*, v2t : LibC::Double*, ldv2t : LibC::Int*, b11d : LibC::Double*, b11e : LibC::Double*, b12d : LibC::Double*, b12e : LibC::Double*, b21d : LibC::Double*, b21e : LibC::Double*, b22d : LibC::Double*, b22e : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sbbcsd = sbbcsd_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, jobv2t : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, theta : LibC::Float*, phi : LibC::Float*, u1 : LibC::Float*, ldu1 : LibC::Int*, u2 : LibC::Float*, ldu2 : LibC::Int*, v1t : LibC::Float*, ldv1t : LibC::Int*, v2t : LibC::Float*, ldv2t : LibC::Int*, b11d : LibC::Float*, b11e : LibC::Float*, b12d : LibC::Float*, b12e : LibC::Float*, b21d : LibC::Float*, b21e : LibC::Float*, b22d : LibC::Float*, b22e : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zbbcsd because the type `lapack_complex_double` is not defined in this library.
    fun dbdsdc = dbdsdc_(uplo : LibC::Char*, compq : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, vt : LibC::Double*, ldvt : LibC::Int*, q : LibC::Double*, iq : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sbdsdc = sbdsdc_(uplo : LibC::Char*, compq : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, vt : LibC::Float*, ldvt : LibC::Int*, q : LibC::Float*, iq : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded cbdsqr because the type `lapack_complex_float` is not defined in this library.
    fun dbdsqr = dbdsqr_(uplo : LibC::Char*, n : LibC::Int*, ncvt : LibC::Int*, nru : LibC::Int*, ncc : LibC::Int*, d : LibC::Double*, e : LibC::Double*, vt : LibC::Double*, ldvt : LibC::Int*, u : LibC::Double*, ldu : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sbdsqr = sbdsqr_(uplo : LibC::Char*, n : LibC::Int*, ncvt : LibC::Int*, nru : LibC::Int*, ncc : LibC::Int*, d : LibC::Float*, e : LibC::Float*, vt : LibC::Float*, ldvt : LibC::Int*, u : LibC::Float*, ldu : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zbdsqr because the type `lapack_complex_double` is not defined in this library.
    fun dbdsvdx = dbdsvdx_(uplo : LibC::Char*, jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, ns : LibC::Int*, s : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sbdsvdx = sbdsvdx_(uplo : LibC::Char*, jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, ns : LibC::Int*, s : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    fun ddisna = ddisna_(job : LibC::Char*, m : LibC::Int*, n : LibC::Int*, d : LibC::Double*, sep : LibC::Double*, info : LibC::Int*)
    fun sdisna = sdisna_(job : LibC::Char*, m : LibC::Int*, n : LibC::Int*, d : LibC::Float*, sep : LibC::Float*, info : LibC::Int*)
    # Excluded cgbbrd because the type `lapack_complex_float` is not defined in this library.
    fun dgbbrd = dgbbrd_(vect : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ncc : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, d : LibC::Double*, e : LibC::Double*, q : LibC::Double*, ldq : LibC::Int*, pt : LibC::Double*, ldpt : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sgbbrd = sgbbrd_(vect : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ncc : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, d : LibC::Float*, e : LibC::Float*, q : LibC::Float*, ldq : LibC::Int*, pt : LibC::Float*, ldpt : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgbbrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbcon because the type `lapack_complex_float` is not defined in this library.
    fun dgbcon = dgbcon_(norm : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, ipiv : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgbcon = sgbcon_(norm : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, ipiv : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgbcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbequ because the type `lapack_complex_float` is not defined in this library.
    fun dgbequ = dgbequ_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, r : LibC::Double*, c : LibC::Double*, rowcnd : LibC::Double*, colcnd : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun sgbequ = sgbequ_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, r : LibC::Float*, c : LibC::Float*, rowcnd : LibC::Float*, colcnd : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zgbequ because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbequb because the type `lapack_complex_float` is not defined in this library.
    fun dgbequb = dgbequb_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, r : LibC::Double*, c : LibC::Double*, rowcnd : LibC::Double*, colcnd : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun sgbequb = sgbequb_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, r : LibC::Float*, c : LibC::Float*, rowcnd : LibC::Float*, colcnd : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zgbequb because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbrfs because the type `lapack_complex_float` is not defined in this library.
    fun dgbrfs = dgbrfs_(trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, afb : LibC::Double*, ldafb : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgbrfs = sgbrfs_(trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, afb : LibC::Float*, ldafb : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgbrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbrfsx because the type `lapack_complex_float` is not defined in this library.
    # Excluded dgbrfsx because the type `const double` is not defined in this library.
    # Excluded sgbrfsx because the type `const float` is not defined in this library.
    # Excluded zgbrfsx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbsv because the type `lapack_complex_float` is not defined in this library.
    fun dgbsv = dgbsv_(n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgbsv = sgbsv_(n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgbsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbsvx because the type `lapack_complex_float` is not defined in this library.
    fun dgbsvx = dgbsvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, afb : LibC::Double*, ldafb : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Double*, c : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgbsvx = sgbsvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, afb : LibC::Float*, ldafb : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Float*, c : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgbsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbsvxx because the type `lapack_complex_float` is not defined in this library.
    fun dgbsvxx = dgbsvxx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, afb : LibC::Double*, ldafb : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Double*, c : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, rpvgrw : LibC::Double*, berr : LibC::Double*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Double*, err_bnds_comp : LibC::Double*, nparams : LibC::Int*, params : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgbsvxx = sgbsvxx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, afb : LibC::Float*, ldafb : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Float*, c : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, rpvgrw : LibC::Float*, berr : LibC::Float*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Float*, err_bnds_comp : LibC::Float*, nparams : LibC::Int*, params : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgbsvxx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbtrf because the type `lapack_complex_float` is not defined in this library.
    fun dgbtrf = dgbtrf_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    fun sgbtrf = sgbtrf_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zgbtrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgbtrs because the type `lapack_complex_float` is not defined in this library.
    fun dgbtrs = dgbtrs_(trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgbtrs = sgbtrs_(trans : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgbtrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgebak because the type `lapack_complex_float` is not defined in this library.
    fun dgebak = dgebak_(job : LibC::Char*, side : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Double*, m : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, info : LibC::Int*)
    fun sgebak = sgebak_(job : LibC::Char*, side : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Float*, m : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, info : LibC::Int*)
    # Excluded zgebak because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgebal because the type `lapack_complex_float` is not defined in this library.
    fun dgebal = dgebal_(job : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Double*, info : LibC::Int*)
    fun sgebal = sgebal_(job : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Float*, info : LibC::Int*)
    # Excluded zgebal because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgebrd because the type `lapack_complex_float` is not defined in this library.
    fun dgebrd = dgebrd_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, d : LibC::Double*, e : LibC::Double*, tauq : LibC::Double*, taup : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgebrd = sgebrd_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, d : LibC::Float*, e : LibC::Float*, tauq : LibC::Float*, taup : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgebrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgecon because the type `lapack_complex_float` is not defined in this library.
    fun dgecon = dgecon_(norm : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgecon = sgecon_(norm : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgecon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeequ because the type `lapack_complex_float` is not defined in this library.
    fun dgeequ = dgeequ_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, r : LibC::Double*, c : LibC::Double*, rowcnd : LibC::Double*, colcnd : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun sgeequ = sgeequ_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, r : LibC::Float*, c : LibC::Float*, rowcnd : LibC::Float*, colcnd : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zgeequ because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeequb because the type `lapack_complex_float` is not defined in this library.
    fun dgeequb = dgeequb_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, r : LibC::Double*, c : LibC::Double*, rowcnd : LibC::Double*, colcnd : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun sgeequb = sgeequb_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, r : LibC::Float*, c : LibC::Float*, rowcnd : LibC::Float*, colcnd : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zgeequb because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgees because the type `LAPACK_C_SELECT1` is not defined in this library.
    # Excluded dgees because the type `LAPACK_D_SELECT2` is not defined in this library.
    # Excluded sgees because the type `LAPACK_S_SELECT2` is not defined in this library.
    # Excluded zgees because the type `LAPACK_Z_SELECT1` is not defined in this library.
    # Excluded cgeesx because the type `LAPACK_C_SELECT1` is not defined in this library.
    # Excluded dgeesx because the type `LAPACK_D_SELECT2` is not defined in this library.
    # Excluded sgeesx because the type `LAPACK_S_SELECT2` is not defined in this library.
    # Excluded zgeesx because the type `LAPACK_Z_SELECT1` is not defined in this library.
    # Excluded cgeev because the type `lapack_complex_float` is not defined in this library.
    fun dgeev = dgeev_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, wr : LibC::Double*, wi : LibC::Double*, vl : LibC::Double*, ldvl : LibC::Int*, vr : LibC::Double*, ldvr : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeev = sgeev_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, wr : LibC::Float*, wi : LibC::Float*, vl : LibC::Float*, ldvl : LibC::Int*, vr : LibC::Float*, ldvr : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeev because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeevx because the type `lapack_complex_float` is not defined in this library.
    fun dgeevx = dgeevx_(balanc : LibC::Char*, jobvl : LibC::Char*, jobvr : LibC::Char*, sense : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, wr : LibC::Double*, wi : LibC::Double*, vl : LibC::Double*, ldvl : LibC::Int*, vr : LibC::Double*, ldvr : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Double*, abnrm : LibC::Double*, rconde : LibC::Double*, rcondv : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgeevx = sgeevx_(balanc : LibC::Char*, jobvl : LibC::Char*, jobvr : LibC::Char*, sense : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, wr : LibC::Float*, wi : LibC::Float*, vl : LibC::Float*, ldvl : LibC::Int*, vr : LibC::Float*, ldvr : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, scale : LibC::Float*, abnrm : LibC::Float*, rconde : LibC::Float*, rcondv : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeevx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgehrd because the type `lapack_complex_float` is not defined in this library.
    fun dgehrd = dgehrd_(n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgehrd = sgehrd_(n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgehrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgejsv because the type `lapack_complex_float` is not defined in this library.
    fun dgejsv = dgejsv_(joba : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, jobr : LibC::Char*, jobt : LibC::Char*, jobp : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, sva : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgejsv = sgejsv_(joba : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, jobr : LibC::Char*, jobt : LibC::Char*, jobp : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, sva : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgejsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelq because the type `lapack_complex_float` is not defined in this library.
    fun dgelq = dgelq_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, tsize : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgelq = sgelq_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, tsize : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgelq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelq2 because the type `lapack_complex_float` is not defined in this library.
    fun dgelq2 = dgelq2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sgelq2 = sgelq2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgelq2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelqf because the type `lapack_complex_float` is not defined in this library.
    fun dgelqf = dgelqf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgelqf = sgelqf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgelqf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgels because the type `lapack_complex_float` is not defined in this library.
    fun dgels = dgels_(trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgels = sgels_(trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgels because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelsd because the type `lapack_complex_float` is not defined in this library.
    fun dgelsd = dgelsd_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, s : LibC::Double*, rcond : LibC::Double*, rank : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgelsd = sgelsd_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, s : LibC::Float*, rcond : LibC::Float*, rank : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgelsd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelss because the type `lapack_complex_float` is not defined in this library.
    fun dgelss = dgelss_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, s : LibC::Double*, rcond : LibC::Double*, rank : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgelss = sgelss_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, s : LibC::Float*, rcond : LibC::Float*, rank : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgelss because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgelsy because the type `lapack_complex_float` is not defined in this library.
    fun dgelsy = dgelsy_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, jpvt : LibC::Int*, rcond : LibC::Double*, rank : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgelsy = sgelsy_(m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, jpvt : LibC::Int*, rcond : LibC::Float*, rank : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgelsy because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgemlq because the type `lapack_complex_float` is not defined in this library.
    fun dgemlq = dgemlq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, tsize : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgemlq = sgemlq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, tsize : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgemlq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgemqr because the type `lapack_complex_float` is not defined in this library.
    fun dgemqr = dgemqr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, tsize : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgemqr = sgemqr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, tsize : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgemqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgemqrt because the type `lapack_complex_float` is not defined in this library.
    fun dgemqrt = dgemqrt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, nb : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sgemqrt = sgemqrt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, nb : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgemqrt because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeql2 because the type `lapack_complex_float` is not defined in this library.
    fun dgeql2 = dgeql2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sgeql2 = sgeql2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgeql2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqlf because the type `lapack_complex_float` is not defined in this library.
    fun dgeqlf = dgeqlf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeqlf = sgeqlf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqlf because the type `lapack_complex_double` is not defined in this library.
    fun sgeqpf = sgeqpf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, jpvt : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    fun dgeqpf = dgeqpf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, jpvt : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    # Excluded cgeqpf because the type `lapack_complex_float` is not defined in this library.
    # Excluded zgeqpf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqp3 because the type `lapack_complex_float` is not defined in this library.
    fun dgeqp3 = dgeqp3_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, jpvt : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeqp3 = sgeqp3_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, jpvt : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqp3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqr because the type `lapack_complex_float` is not defined in this library.
    fun dgeqr = dgeqr_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, tsize : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeqr = sgeqr_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, tsize : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqr2 because the type `lapack_complex_float` is not defined in this library.
    fun dgeqr2 = dgeqr2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sgeqr2 = sgeqr2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgeqr2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqrf because the type `lapack_complex_float` is not defined in this library.
    fun dgeqrf = dgeqrf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeqrf = sgeqrf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqrfp because the type `lapack_complex_float` is not defined in this library.
    fun dgeqrfp = dgeqrfp_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgeqrfp = sgeqrfp_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqrfp because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqrt because the type `lapack_complex_float` is not defined in this library.
    fun dgeqrt = dgeqrt_(m : LibC::Int*, n : LibC::Int*, nb : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sgeqrt = sgeqrt_(m : LibC::Int*, n : LibC::Int*, nb : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgeqrt because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqrt2 because the type `lapack_complex_float` is not defined in this library.
    fun dgeqrt2 = dgeqrt2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, info : LibC::Int*)
    fun sgeqrt2 = sgeqrt2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqrt2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgeqrt3 because the type `lapack_complex_float` is not defined in this library.
    fun dgeqrt3 = dgeqrt3_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, info : LibC::Int*)
    fun sgeqrt3 = sgeqrt3_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, info : LibC::Int*)
    # Excluded zgeqrt3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgerfs because the type `lapack_complex_float` is not defined in this library.
    fun dgerfs = dgerfs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgerfs = sgerfs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgerfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgerfsx because the type `lapack_complex_float` is not defined in this library.
    fun dgerfsx = dgerfsx_(trans : LibC::Char*, equed : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, r : LibC::Double*, c : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, berr : LibC::Double*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Double*, err_bnds_comp : LibC::Double*, nparams : LibC::Int*, params : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgerfsx = sgerfsx_(trans : LibC::Char*, equed : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, r : LibC::Float*, c : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, berr : LibC::Float*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Float*, err_bnds_comp : LibC::Float*, nparams : LibC::Int*, params : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgerfsx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgerq2 because the type `lapack_complex_float` is not defined in this library.
    fun dgerq2 = dgerq2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sgerq2 = sgerq2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zgerq2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgerqf because the type `lapack_complex_float` is not defined in this library.
    fun dgerqf = dgerqf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgerqf = sgerqf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgerqf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesdd because the type `lapack_complex_float` is not defined in this library.
    fun dgesdd = dgesdd_(jobz : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, vt : LibC::Double*, ldvt : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgesdd = sgesdd_(jobz : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, vt : LibC::Float*, ldvt : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesdd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesv because the type `lapack_complex_float` is not defined in this library.
    fun dgesv = dgesv_(n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgesv = sgesv_(n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgesv because the type `lapack_complex_double` is not defined in this library.
    fun dsgesv = dsgesv_(n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, work : LibC::Double*, swork : LibC::Float*, iter : LibC::Int*, info : LibC::Int*)
    # Excluded zcgesv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvd because the type `lapack_complex_float` is not defined in this library.
    fun dgesvd = dgesvd_(jobu : LibC::Char*, jobvt : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, vt : LibC::Double*, ldvt : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgesvd = sgesvd_(jobu : LibC::Char*, jobvt : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, vt : LibC::Float*, ldvt : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvdq because the type `lapack_complex_float` is not defined in this library.
    fun dgesvdq = dgesvdq_(joba : LibC::Char*, jobp : LibC::Char*, jobr : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, numrank : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, rwork : LibC::Double*, lrwork : LibC::Int*, info : LibC::Int*)
    fun sgesvdq = sgesvdq_(joba : LibC::Char*, jobp : LibC::Char*, jobr : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, numrank : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, rwork : LibC::Float*, lrwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvdq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvdx because the type `lapack_complex_float` is not defined in this library.
    fun dgesvdx = dgesvdx_(jobu : LibC::Char*, jobvt : LibC::Char*, range : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, ns : LibC::Int*, s : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, vt : LibC::Double*, ldvt : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgesvdx = sgesvdx_(jobu : LibC::Char*, jobvt : LibC::Char*, range : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, ns : LibC::Int*, s : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, vt : LibC::Float*, ldvt : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvdx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvj because the type `lapack_complex_float` is not defined in this library.
    fun dgesvj = dgesvj_(joba : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, sva : LibC::Double*, mv : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgesvj = sgesvj_(joba : LibC::Char*, jobu : LibC::Char*, jobv : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, sva : LibC::Float*, mv : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvj because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvx because the type `lapack_complex_float` is not defined in this library.
    fun dgesvx = dgesvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Double*, c : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgesvx = sgesvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Float*, c : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgesvxx because the type `lapack_complex_float` is not defined in this library.
    fun dgesvxx = dgesvxx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Double*, c : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, rpvgrw : LibC::Double*, berr : LibC::Double*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Double*, err_bnds_comp : LibC::Double*, nparams : LibC::Int*, params : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgesvxx = sgesvxx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, r : LibC::Float*, c : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, rpvgrw : LibC::Float*, berr : LibC::Float*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Float*, err_bnds_comp : LibC::Float*, nparams : LibC::Int*, params : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgesvxx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetf2 because the type `lapack_complex_float` is not defined in this library.
    fun dgetf2 = dgetf2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    fun sgetf2 = sgetf2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zgetf2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetrf because the type `lapack_complex_float` is not defined in this library.
    fun dgetrf = dgetrf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    fun sgetrf = sgetrf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zgetrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetrf2 because the type `lapack_complex_float` is not defined in this library.
    fun dgetrf2 = dgetrf2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    fun sgetrf2 = sgetrf2_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zgetrf2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetri because the type `lapack_complex_float` is not defined in this library.
    fun dgetri = dgetri_(n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgetri = sgetri_(n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgetri because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetrs because the type `lapack_complex_float` is not defined in this library.
    fun dgetrs = dgetrs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgetrs = sgetrs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgetrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetsls because the type `lapack_complex_float` is not defined in this library.
    fun dgetsls = dgetsls_(trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgetsls = sgetsls_(trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgetsls because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgetsqrhrt because the type `lapack_complex_float` is not defined in this library.
    fun dgetsqrhrt = dgetsqrhrt_(m : LibC::Int*, n : LibC::Int*, mb1 : LibC::Int*, nb1 : LibC::Int*, nb2 : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgetsqrhrt = sgetsqrhrt_(m : LibC::Int*, n : LibC::Int*, mb1 : LibC::Int*, nb1 : LibC::Int*, nb2 : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgetsqrhrt because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggbak because the type `lapack_complex_float` is not defined in this library.
    fun dggbak = dggbak_(job : LibC::Char*, side : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, lscale : LibC::Double*, rscale : LibC::Double*, m : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, info : LibC::Int*)
    fun sggbak = sggbak_(job : LibC::Char*, side : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, lscale : LibC::Float*, rscale : LibC::Float*, m : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, info : LibC::Int*)
    # Excluded zggbak because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggbal because the type `lapack_complex_float` is not defined in this library.
    fun dggbal = dggbal_(job : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, lscale : LibC::Double*, rscale : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sggbal = sggbal_(job : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, lscale : LibC::Float*, rscale : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zggbal because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgges because the type `LAPACK_C_SELECT2` is not defined in this library.
    # Excluded dgges because the type `LAPACK_D_SELECT3` is not defined in this library.
    # Excluded sgges because the type `LAPACK_S_SELECT3` is not defined in this library.
    # Excluded zgges because the type `LAPACK_Z_SELECT2` is not defined in this library.
    # Excluded cgges3 because the type `LAPACK_C_SELECT2` is not defined in this library.
    # Excluded dgges3 because the type `LAPACK_D_SELECT3` is not defined in this library.
    # Excluded sgges3 because the type `LAPACK_S_SELECT3` is not defined in this library.
    # Excluded zgges3 because the type `LAPACK_Z_SELECT2` is not defined in this library.
    # Excluded cggesx because the type `LAPACK_C_SELECT2` is not defined in this library.
    # Excluded dggesx because the type `LAPACK_D_SELECT3` is not defined in this library.
    # Excluded sggesx because the type `LAPACK_S_SELECT3` is not defined in this library.
    # Excluded zggesx because the type `LAPACK_Z_SELECT2` is not defined in this library.
    # Excluded cggev because the type `lapack_complex_float` is not defined in this library.
    fun dggev = dggev_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, alphar : LibC::Double*, alphai : LibC::Double*, beta : LibC::Double*, vl : LibC::Double*, ldvl : LibC::Int*, vr : LibC::Double*, ldvr : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggev = sggev_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, alphar : LibC::Float*, alphai : LibC::Float*, beta : LibC::Float*, vl : LibC::Float*, ldvl : LibC::Int*, vr : LibC::Float*, ldvr : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggev because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggev3 because the type `lapack_complex_float` is not defined in this library.
    fun dggev3 = dggev3_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, alphar : LibC::Double*, alphai : LibC::Double*, beta : LibC::Double*, vl : LibC::Double*, ldvl : LibC::Int*, vr : LibC::Double*, ldvr : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggev3 = sggev3_(jobvl : LibC::Char*, jobvr : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, alphar : LibC::Float*, alphai : LibC::Float*, beta : LibC::Float*, vl : LibC::Float*, ldvl : LibC::Int*, vr : LibC::Float*, ldvr : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggev3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggevx because the type `lapack_complex_float` is not defined in this library.
    # Excluded dggevx because the type `lapack_logical` is not defined in this library.
    # Excluded sggevx because the type `lapack_logical` is not defined in this library.
    # Excluded zggevx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggglm because the type `lapack_complex_float` is not defined in this library.
    fun dggglm = dggglm_(n : LibC::Int*, m : LibC::Int*, p : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, d : LibC::Double*, x : LibC::Double*, y : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggglm = sggglm_(n : LibC::Int*, m : LibC::Int*, p : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, d : LibC::Float*, x : LibC::Float*, y : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggglm because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgghd3 because the type `lapack_complex_float` is not defined in this library.
    fun dgghd3 = dgghd3_(compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgghd3 = sgghd3_(compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgghd3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgghrd because the type `lapack_complex_float` is not defined in this library.
    fun dgghrd = dgghrd_(compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, z : LibC::Double*, ldz : LibC::Int*, info : LibC::Int*)
    fun sgghrd = sgghrd_(compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, z : LibC::Float*, ldz : LibC::Int*, info : LibC::Int*)
    # Excluded zgghrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgglse because the type `lapack_complex_float` is not defined in this library.
    fun dgglse = dgglse_(m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, c : LibC::Double*, d : LibC::Double*, x : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sgglse = sgglse_(m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, c : LibC::Float*, d : LibC::Float*, x : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgglse because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggqrf because the type `lapack_complex_float` is not defined in this library.
    fun dggqrf = dggqrf_(n : LibC::Int*, m : LibC::Int*, p : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, taua : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, taub : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggqrf = sggqrf_(n : LibC::Int*, m : LibC::Int*, p : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, taua : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, taub : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggqrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggrqf because the type `lapack_complex_float` is not defined in this library.
    fun dggrqf = dggrqf_(m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, taua : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, taub : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggrqf = sggrqf_(m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, taua : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, taub : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggrqf because the type `lapack_complex_double` is not defined in this library.
    fun sggsvd = sggsvd_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, alpha : LibC::Float*, beta : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    fun dggsvd = dggsvd_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, alpha : LibC::Double*, beta : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded cggsvd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zggsvd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggsvd3 because the type `lapack_complex_float` is not defined in this library.
    fun dggsvd3 = dggsvd3_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, alpha : LibC::Double*, beta : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sggsvd3 = sggsvd3_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, n : LibC::Int*, p : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, alpha : LibC::Float*, beta : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggsvd3 because the type `lapack_complex_double` is not defined in this library.
    fun sggsvp = sggsvp_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, tola : LibC::Float*, tolb : LibC::Float*, k : LibC::Int*, l : LibC::Int*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, iwork : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    fun dggsvp = dggsvp_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, tola : LibC::Double*, tolb : LibC::Double*, k : LibC::Int*, l : LibC::Int*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, iwork : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    # Excluded cggsvp because the type `lapack_complex_float` is not defined in this library.
    # Excluded zggsvp because the type `lapack_complex_double` is not defined in this library.
    # Excluded cggsvp3 because the type `lapack_complex_float` is not defined in this library.
    fun dggsvp3 = dggsvp3_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, tola : LibC::Double*, tolb : LibC::Double*, k : LibC::Int*, l : LibC::Int*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, iwork : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sggsvp3 = sggsvp3_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, tola : LibC::Float*, tolb : LibC::Float*, k : LibC::Int*, l : LibC::Int*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, iwork : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zggsvp3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgtcon because the type `lapack_complex_float` is not defined in this library.
    fun dgtcon = dgtcon_(norm : LibC::Char*, n : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, du2 : LibC::Double*, ipiv : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgtcon = sgtcon_(norm : LibC::Char*, n : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, du2 : LibC::Float*, ipiv : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgtcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgtrfs because the type `lapack_complex_float` is not defined in this library.
    fun dgtrfs = dgtrfs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, dlf : LibC::Double*, df : LibC::Double*, duf : LibC::Double*, du2 : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgtrfs = sgtrfs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, dlf : LibC::Float*, df : LibC::Float*, duf : LibC::Float*, du2 : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgtrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgtsv because the type `lapack_complex_float` is not defined in this library.
    fun dgtsv = dgtsv_(n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgtsv = sgtsv_(n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgtsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgtsvx because the type `lapack_complex_float` is not defined in this library.
    fun dgtsvx = dgtsvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, dlf : LibC::Double*, df : LibC::Double*, duf : LibC::Double*, du2 : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sgtsvx = sgtsvx_(fact : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, dlf : LibC::Float*, df : LibC::Float*, duf : LibC::Float*, du2 : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zgtsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgttrf because the type `lapack_complex_float` is not defined in this library.
    fun dgttrf = dgttrf_(n : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, du2 : LibC::Double*, ipiv : LibC::Int*, info : LibC::Int*)
    fun sgttrf = sgttrf_(n : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, du2 : LibC::Float*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zgttrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cgttrs because the type `lapack_complex_float` is not defined in this library.
    fun dgttrs = dgttrs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*, du2 : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sgttrs = sgttrs_(trans : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*, du2 : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zgttrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbev because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbev because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbev_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbev_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbevd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbevd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbevd_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbevd_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbevx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbevx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbevx_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbevx_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbgst because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbgst because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbgv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbgv because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbgvd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbgvd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbgvx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbgvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chbtrd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhbtrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded checon because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhecon because the type `lapack_complex_double` is not defined in this library.
    # Excluded checon_3 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhecon_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheequb because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheequb because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheev because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheev because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheev_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheev_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevd_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevd_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevr_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevr_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheevx_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheevx_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chegst because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhegst because the type `lapack_complex_double` is not defined in this library.
    # Excluded chegv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhegv because the type `lapack_complex_double` is not defined in this library.
    # Excluded chegv_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhegv_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chegvd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhegvd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chegvx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhegvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cherfs because the type `lapack_complex_float` is not defined in this library.
    # Excluded zherfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cherfsx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zherfsx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesv because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesv_aa because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesv_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesv_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesv_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesv_rk because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesv_rk because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesv_rook because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesv_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesvx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chesvxx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhesvxx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cheswapr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zheswapr because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrd_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrd_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrf because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrf_aa because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrf_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrf_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrf_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrf_rk because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrf_rk because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrf_rook because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrf_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetri because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetri because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetri2 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetri2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetri2x because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetri2x because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetri_3 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetri_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs2 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs_3 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs_aa because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded chetrs_rook because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhetrs_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded chfrk because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhfrk because the type `lapack_complex_double` is not defined in this library.
    # Excluded chgeqz because the type `lapack_complex_float` is not defined in this library.
    fun dhgeqz = dhgeqz_(job : LibC::Char*, compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, h : LibC::Double*, ldh : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, alphar : LibC::Double*, alphai : LibC::Double*, beta : LibC::Double*, q : LibC::Double*, ldq : LibC::Int*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun shgeqz = shgeqz_(job : LibC::Char*, compq : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, h : LibC::Float*, ldh : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, alphar : LibC::Float*, alphai : LibC::Float*, beta : LibC::Float*, q : LibC::Float*, ldq : LibC::Int*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zhgeqz because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpcon because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpev because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpev because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpevd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpevd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpevx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpevx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpgst because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpgst because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpgv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpgv because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpgvd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpgvd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpgvx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpgvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chprfs because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhprfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpsv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded chpsvx because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhpsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded chptrd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhptrd because the type `lapack_complex_double` is not defined in this library.
    # Excluded chptrf because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhptrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded chptri because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhptri because the type `lapack_complex_double` is not defined in this library.
    # Excluded chptrs because the type `lapack_complex_float` is not defined in this library.
    # Excluded zhptrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded chsein because the type `lapack_logical` is not defined in this library.
    # Excluded dhsein because the type `lapack_logical` is not defined in this library.
    # Excluded shsein because the type `lapack_logical` is not defined in this library.
    # Excluded zhsein because the type `lapack_logical` is not defined in this library.
    # Excluded chseqr because the type `lapack_complex_float` is not defined in this library.
    fun dhseqr = dhseqr_(job : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, h : LibC::Double*, ldh : LibC::Int*, wr : LibC::Double*, wi : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun shseqr = shseqr_(job : LibC::Char*, compz : LibC::Char*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, h : LibC::Float*, ldh : LibC::Int*, wr : LibC::Float*, wi : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zhseqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded clacgv because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlacgv because the type `lapack_complex_double` is not defined in this library.
    # Excluded clacn2 because the type `lapack_complex_float` is not defined in this library.
    fun dlacn2 = dlacn2_(n : LibC::Int*, v : LibC::Double*, x : LibC::Double*, isgn : LibC::Int*, est : LibC::Double*, kase : LibC::Int*, isave : LibC::Int*)
    fun slacn2 = slacn2_(n : LibC::Int*, v : LibC::Float*, x : LibC::Float*, isgn : LibC::Int*, est : LibC::Float*, kase : LibC::Int*, isave : LibC::Int*)
    # Excluded zlacn2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded clacp2 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlacp2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded clacpy because the type `lapack_complex_float` is not defined in this library.
    fun dlacpy = dlacpy_(uplo : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*)
    fun slacpy = slacpy_(uplo : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*)
    # Excluded zlacpy because the type `lapack_complex_double` is not defined in this library.
    # Excluded clacrm because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlacrm because the type `lapack_complex_double` is not defined in this library.
    # Excluded zlag2c because the type `lapack_complex_double` is not defined in this library.
    fun slag2d = slag2d_(m : LibC::Int*, n : LibC::Int*, sa : LibC::Float*, ldsa : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun dlag2s = dlag2s_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, sa : LibC::Float*, ldsa : LibC::Int*, info : LibC::Int*)
    # Excluded clag2z because the type `lapack_complex_float` is not defined in this library.
    # Excluded clagge because the type `lapack_complex_float` is not defined in this library.
    fun dlagge = dlagge_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, d : LibC::Double*, a : LibC::Double*, lda : LibC::Int*, iseed : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun slagge = slagge_(m : LibC::Int*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, d : LibC::Float*, a : LibC::Float*, lda : LibC::Int*, iseed : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zlagge because the type `lapack_complex_double` is not defined in this library.
    # Excluded claghe because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlaghe because the type `lapack_complex_double` is not defined in this library.
    # Excluded clagsy because the type `lapack_complex_float` is not defined in this library.
    fun dlagsy = dlagsy_(n : LibC::Int*, k : LibC::Int*, d : LibC::Double*, a : LibC::Double*, lda : LibC::Int*, iseed : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun slagsy = slagsy_(n : LibC::Int*, k : LibC::Int*, d : LibC::Float*, a : LibC::Float*, lda : LibC::Int*, iseed : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zlagsy because the type `lapack_complex_double` is not defined in this library.
    fun dlamch = dlamch_(cmach : LibC::Char*)
    fun slamch = slamch_(cmach : LibC::Char*)
    # Excluded clangb because the type `lapack_complex_float` is not defined in this library.
    fun dlangb = dlangb_(norm : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, work : LibC::Double*)
    fun slangb = slangb_(norm : LibC::Char*, n : LibC::Int*, kl : LibC::Int*, ku : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, work : LibC::Float*)
    # Excluded zlangb because the type `lapack_complex_double` is not defined in this library.
    # Excluded clange because the type `lapack_complex_float` is not defined in this library.
    fun dlange = dlange_(norm : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, work : LibC::Double*)
    fun slange = slange_(norm : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, work : LibC::Float*)
    # Excluded zlange because the type `lapack_complex_double` is not defined in this library.
    # Excluded clangt because the type `lapack_complex_float` is not defined in this library.
    fun dlangt = dlangt_(norm : LibC::Char*, n : LibC::Int*, dl : LibC::Double*, d : LibC::Double*, du : LibC::Double*)
    fun slangt = slangt_(norm : LibC::Char*, n : LibC::Int*, dl : LibC::Float*, d : LibC::Float*, du : LibC::Float*)
    # Excluded zlangt because the type `lapack_complex_double` is not defined in this library.
    # Excluded clanhb because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlanhb because the type `lapack_complex_double` is not defined in this library.
    # Excluded clanhe because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlanhe because the type `lapack_complex_double` is not defined in this library.
    # Excluded clanhp because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlanhp because the type `lapack_complex_double` is not defined in this library.
    # Excluded clanhs because the type `lapack_complex_float` is not defined in this library.
    fun dlanhs = dlanhs_(norm : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, work : LibC::Double*)
    fun slanhs = slanhs_(norm : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, work : LibC::Float*)
    # Excluded zlanhs because the type `lapack_complex_double` is not defined in this library.
    # Excluded clanht because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlanht because the type `lapack_complex_double` is not defined in this library.
    # Excluded clansb because the type `lapack_complex_float` is not defined in this library.
    fun dlansb = dlansb_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, k : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, work : LibC::Double*)
    fun slansb = slansb_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, k : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, work : LibC::Float*)
    # Excluded zlansb because the type `lapack_complex_double` is not defined in this library.
    # Excluded clansp because the type `lapack_complex_float` is not defined in this library.
    fun dlansp = dlansp_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, work : LibC::Double*)
    fun slansp = slansp_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, work : LibC::Float*)
    # Excluded zlansp because the type `lapack_complex_double` is not defined in this library.
    fun dlanst = dlanst_(norm : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*)
    fun slanst = slanst_(norm : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*)
    # Excluded clansy because the type `lapack_complex_float` is not defined in this library.
    fun dlansy = dlansy_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, work : LibC::Double*)
    fun slansy = slansy_(norm : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, work : LibC::Float*)
    # Excluded zlansy because the type `lapack_complex_double` is not defined in this library.
    # Excluded clantb because the type `lapack_complex_float` is not defined in this library.
    fun dlantb = dlantb_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, k : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, work : LibC::Double*)
    fun slantb = slantb_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, k : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, work : LibC::Float*)
    # Excluded zlantb because the type `lapack_complex_double` is not defined in this library.
    # Excluded clantp because the type `lapack_complex_float` is not defined in this library.
    fun dlantp = dlantp_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, work : LibC::Double*)
    fun slantp = slantp_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, work : LibC::Float*)
    # Excluded zlantp because the type `lapack_complex_double` is not defined in this library.
    # Excluded clantr because the type `lapack_complex_float` is not defined in this library.
    fun dlantr = dlantr_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, work : LibC::Double*)
    fun slantr = slantr_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, work : LibC::Float*)
    # Excluded zlantr because the type `lapack_complex_double` is not defined in this library.
    # Excluded clapmr because the type `lapack_logical` is not defined in this library.
    # Excluded dlapmr because the type `lapack_logical` is not defined in this library.
    # Excluded slapmr because the type `lapack_logical` is not defined in this library.
    # Excluded zlapmr because the type `lapack_logical` is not defined in this library.
    # Excluded clapmt because the type `lapack_logical` is not defined in this library.
    # Excluded dlapmt because the type `lapack_logical` is not defined in this library.
    # Excluded slapmt because the type `lapack_logical` is not defined in this library.
    # Excluded zlapmt because the type `lapack_logical` is not defined in this library.
    fun dlapy2 = dlapy2_(x : LibC::Double*, y : LibC::Double*)
    fun slapy2 = slapy2_(x : LibC::Float*, y : LibC::Float*)
    fun dlapy3 = dlapy3_(x : LibC::Double*, y : LibC::Double*, z : LibC::Double*)
    fun slapy3 = slapy3_(x : LibC::Float*, y : LibC::Float*, z : LibC::Float*)
    # Excluded clarcm because the type `lapack_complex_float` is not defined in this library.
    # Excluded zlarcm because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarf because the type `lapack_complex_float` is not defined in this library.
    fun dlarf = dlarf_(side : LibC::Char*, m : LibC::Int*, n : LibC::Int*, v : LibC::Double*, incv : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*)
    fun slarf = slarf_(side : LibC::Char*, m : LibC::Int*, n : LibC::Int*, v : LibC::Float*, incv : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*)
    # Excluded zlarf because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarfb because the type `lapack_complex_float` is not defined in this library.
    fun dlarfb = dlarfb_(side : LibC::Char*, trans : LibC::Char*, direct : LibC::Char*, storev : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, ldwork : LibC::Int*)
    fun slarfb = slarfb_(side : LibC::Char*, trans : LibC::Char*, direct : LibC::Char*, storev : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, ldwork : LibC::Int*)
    # Excluded zlarfb because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarfg because the type `lapack_complex_float` is not defined in this library.
    fun dlarfg = dlarfg_(n : LibC::Int*, alpha : LibC::Double*, x : LibC::Double*, incx : LibC::Int*, tau : LibC::Double*)
    fun slarfg = slarfg_(n : LibC::Int*, alpha : LibC::Float*, x : LibC::Float*, incx : LibC::Int*, tau : LibC::Float*)
    # Excluded zlarfg because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarft because the type `lapack_complex_float` is not defined in this library.
    fun dlarft = dlarft_(direct : LibC::Char*, storev : LibC::Char*, n : LibC::Int*, k : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, tau : LibC::Double*, t : LibC::Double*, ldt : LibC::Int*)
    fun slarft = slarft_(direct : LibC::Char*, storev : LibC::Char*, n : LibC::Int*, k : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, tau : LibC::Float*, t : LibC::Float*, ldt : LibC::Int*)
    # Excluded zlarft because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarfx because the type `lapack_complex_float` is not defined in this library.
    fun dlarfx = dlarfx_(side : LibC::Char*, m : LibC::Int*, n : LibC::Int*, v : LibC::Double*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*)
    fun slarfx = slarfx_(side : LibC::Char*, m : LibC::Int*, n : LibC::Int*, v : LibC::Float*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*)
    # Excluded zlarfx because the type `lapack_complex_double` is not defined in this library.
    # Excluded clarnv because the type `lapack_complex_float` is not defined in this library.
    fun dlarnv = dlarnv_(idist : LibC::Int*, iseed : LibC::Int*, n : LibC::Int*, x : LibC::Double*)
    fun slarnv = slarnv_(idist : LibC::Int*, iseed : LibC::Int*, n : LibC::Int*, x : LibC::Float*)
    # Excluded zlarnv because the type `lapack_complex_double` is not defined in this library.
    fun dlartgp = dlartgp_(f : LibC::Double*, g : LibC::Double*, cs : LibC::Double*, sn : LibC::Double*, r : LibC::Double*)
    fun slartgp = slartgp_(f : LibC::Float*, g : LibC::Float*, cs : LibC::Float*, sn : LibC::Float*, r : LibC::Float*)
    fun dlartgs = dlartgs_(x : LibC::Double*, y : LibC::Double*, sigma : LibC::Double*, cs : LibC::Double*, sn : LibC::Double*)
    fun slartgs = slartgs_(x : LibC::Float*, y : LibC::Float*, sigma : LibC::Float*, cs : LibC::Float*, sn : LibC::Float*)
    # Excluded clascl because the type `lapack_complex_float` is not defined in this library.
    fun dlascl = dlascl_(type : LibC::Char*, kl : LibC::Int*, ku : LibC::Int*, cfrom : LibC::Double*, cto : LibC::Double*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun slascl = slascl_(type : LibC::Char*, kl : LibC::Int*, ku : LibC::Int*, cfrom : LibC::Float*, cto : LibC::Float*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zlascl because the type `lapack_complex_double` is not defined in this library.
    # Excluded claset because the type `lapack_complex_float` is not defined in this library.
    fun dlaset = dlaset_(uplo : LibC::Char*, m : LibC::Int*, n : LibC::Int*, alpha : LibC::Double*, beta : LibC::Double*, a : LibC::Double*, lda : LibC::Int*)
    fun slaset = slaset_(uplo : LibC::Char*, m : LibC::Int*, n : LibC::Int*, alpha : LibC::Float*, beta : LibC::Float*, a : LibC::Float*, lda : LibC::Int*)
    # Excluded zlaset because the type `lapack_complex_double` is not defined in this library.
    fun dlasrt = dlasrt_(id : LibC::Char*, n : LibC::Int*, d : LibC::Double*, info : LibC::Int*)
    fun slasrt = slasrt_(id : LibC::Char*, n : LibC::Int*, d : LibC::Float*, info : LibC::Int*)
    # Excluded classq because the type `lapack_complex_float` is not defined in this library.
    fun dlassq = dlassq_(n : LibC::Int*, x : LibC::Double*, incx : LibC::Int*, scale : LibC::Double*, sumsq : LibC::Double*)
    fun slassq = slassq_(n : LibC::Int*, x : LibC::Float*, incx : LibC::Int*, scale : LibC::Float*, sumsq : LibC::Float*)
    # Excluded zlassq because the type `lapack_complex_double` is not defined in this library.
    # Excluded claswp because the type `lapack_complex_float` is not defined in this library.
    fun dlaswp = dlaswp_(n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, k1 : LibC::Int*, k2 : LibC::Int*, ipiv : LibC::Int*, incx : LibC::Int*)
    fun slaswp = slaswp_(n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, k1 : LibC::Int*, k2 : LibC::Int*, ipiv : LibC::Int*, incx : LibC::Int*)
    # Excluded zlaswp because the type `lapack_complex_double` is not defined in this library.
    # Excluded clatms because the type `lapack_complex_float` is not defined in this library.
    fun dlatms = dlatms_(m : LibC::Int*, n : LibC::Int*, dist : LibC::Char*, iseed : LibC::Int*, sym : LibC::Char*, d : LibC::Double*, mode : LibC::Int*, cond : LibC::Double*, dmax : LibC::Double*, kl : LibC::Int*, ku : LibC::Int*, pack : LibC::Char*, a : LibC::Double*, lda : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun slatms = slatms_(m : LibC::Int*, n : LibC::Int*, dist : LibC::Char*, iseed : LibC::Int*, sym : LibC::Char*, d : LibC::Float*, mode : LibC::Int*, cond : LibC::Float*, dmax : LibC::Float*, kl : LibC::Int*, ku : LibC::Int*, pack : LibC::Char*, a : LibC::Float*, lda : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zlatms because the type `lapack_complex_double` is not defined in this library.
    # Excluded clauum because the type `lapack_complex_float` is not defined in this library.
    fun dlauum = dlauum_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun slauum = slauum_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zlauum because the type `lapack_complex_double` is not defined in this library.
    fun ilaver = ilaver_(vers_major : LibC::Int*, vers_minor : LibC::Int*, vers_patch : LibC::Int*)
    fun dopgtr = dopgtr_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, tau : LibC::Double*, q : LibC::Double*, ldq : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sopgtr = sopgtr_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, tau : LibC::Float*, q : LibC::Float*, ldq : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dopmtr = dopmtr_(side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ap : LibC::Double*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sopmtr = sopmtr_(side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ap : LibC::Float*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dorbdb = dorbdb_(trans : LibC::Char*, signs : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Double*, ldx11 : LibC::Int*, x12 : LibC::Double*, ldx12 : LibC::Int*, x21 : LibC::Double*, ldx21 : LibC::Int*, x22 : LibC::Double*, ldx22 : LibC::Int*, theta : LibC::Double*, phi : LibC::Double*, taup1 : LibC::Double*, taup2 : LibC::Double*, tauq1 : LibC::Double*, tauq2 : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorbdb = sorbdb_(trans : LibC::Char*, signs : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Float*, ldx11 : LibC::Int*, x12 : LibC::Float*, ldx12 : LibC::Int*, x21 : LibC::Float*, ldx21 : LibC::Int*, x22 : LibC::Float*, ldx22 : LibC::Int*, theta : LibC::Float*, phi : LibC::Float*, taup1 : LibC::Float*, taup2 : LibC::Float*, tauq1 : LibC::Float*, tauq2 : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorcsd = dorcsd_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, jobv2t : LibC::Char*, trans : LibC::Char*, signs : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Double*, ldx11 : LibC::Int*, x12 : LibC::Double*, ldx12 : LibC::Int*, x21 : LibC::Double*, ldx21 : LibC::Int*, x22 : LibC::Double*, ldx22 : LibC::Int*, theta : LibC::Double*, u1 : LibC::Double*, ldu1 : LibC::Int*, u2 : LibC::Double*, ldu2 : LibC::Int*, v1t : LibC::Double*, ldv1t : LibC::Int*, v2t : LibC::Double*, ldv2t : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sorcsd = sorcsd_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, jobv2t : LibC::Char*, trans : LibC::Char*, signs : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Float*, ldx11 : LibC::Int*, x12 : LibC::Float*, ldx12 : LibC::Int*, x21 : LibC::Float*, ldx21 : LibC::Int*, x22 : LibC::Float*, ldx22 : LibC::Int*, theta : LibC::Float*, u1 : LibC::Float*, ldu1 : LibC::Int*, u2 : LibC::Float*, ldu2 : LibC::Int*, v1t : LibC::Float*, ldv1t : LibC::Int*, v2t : LibC::Float*, ldv2t : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun dorcsd2by1 = dorcsd2by1_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Double*, ldx11 : LibC::Int*, x21 : LibC::Double*, ldx21 : LibC::Int*, theta : LibC::Double*, u1 : LibC::Double*, ldu1 : LibC::Int*, u2 : LibC::Double*, ldu2 : LibC::Int*, v1t : LibC::Double*, ldv1t : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun sorcsd2by1 = sorcsd2by1_(jobu1 : LibC::Char*, jobu2 : LibC::Char*, jobv1t : LibC::Char*, m : LibC::Int*, p : LibC::Int*, q : LibC::Int*, x11 : LibC::Float*, ldx11 : LibC::Int*, x21 : LibC::Float*, ldx21 : LibC::Int*, theta : LibC::Float*, u1 : LibC::Float*, ldu1 : LibC::Int*, u2 : LibC::Float*, ldu2 : LibC::Int*, v1t : LibC::Float*, ldv1t : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun dorgbr = dorgbr_(vect : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgbr = sorgbr_(vect : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorghr = dorghr_(n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorghr = sorghr_(n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorglq = dorglq_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorglq = sorglq_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorgql = dorgql_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgql = sorgql_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorgqr = dorgqr_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgqr = sorgqr_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorgrq = dorgrq_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgrq = sorgrq_(m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorgtr = dorgtr_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgtr = sorgtr_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dorgtsqr_row = dorgtsqr_row_(m : LibC::Int*, n : LibC::Int*, mb : LibC::Int*, nb : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sorgtsqr_row = sorgtsqr_row_(m : LibC::Int*, n : LibC::Int*, mb : LibC::Int*, nb : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormbr = dormbr_(vect : LibC::Char*, side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormbr = sormbr_(vect : LibC::Char*, side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormhr = dormhr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormhr = sormhr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, ilo : LibC::Int*, ihi : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormlq = dormlq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormlq = sormlq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormql = dormql_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormql = sormql_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormqr = dormqr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormqr = sormqr_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormrq = dormrq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormrq = sormrq_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormrz = dormrz_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormrz = sormrz_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dormtr = dormtr_(side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, c : LibC::Double*, ldc : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun sormtr = sormtr_(side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, c : LibC::Float*, ldc : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded cpbcon because the type `lapack_complex_float` is not defined in this library.
    fun dpbcon = dpbcon_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun spbcon = spbcon_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zpbcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbequ because the type `lapack_complex_float` is not defined in this library.
    fun dpbequ = dpbequ_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, s : LibC::Double*, scond : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun spbequ = spbequ_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, s : LibC::Float*, scond : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zpbequ because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbrfs because the type `lapack_complex_float` is not defined in this library.
    fun dpbrfs = dpbrfs_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, afb : LibC::Double*, ldafb : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun spbrfs = spbrfs_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, afb : LibC::Float*, ldafb : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zpbrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbstf because the type `lapack_complex_float` is not defined in this library.
    fun dpbstf = dpbstf_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, info : LibC::Int*)
    fun spbstf = spbstf_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, info : LibC::Int*)
    # Excluded zpbstf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbsv because the type `lapack_complex_float` is not defined in this library.
    fun dpbsv = dpbsv_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spbsv = spbsv_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpbsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbsvx because the type `lapack_complex_float` is not defined in this library.
    fun dpbsvx = dpbsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, afb : LibC::Double*, ldafb : LibC::Int*, equed : LibC::Char*, s : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun spbsvx = spbsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, afb : LibC::Float*, ldafb : LibC::Int*, equed : LibC::Char*, s : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zpbsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbtrf because the type `lapack_complex_float` is not defined in this library.
    fun dpbtrf = dpbtrf_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, info : LibC::Int*)
    fun spbtrf = spbtrf_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, info : LibC::Int*)
    # Excluded zpbtrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpbtrs because the type `lapack_complex_float` is not defined in this library.
    fun dpbtrs = dpbtrs_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spbtrs = spbtrs_(uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpbtrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpftrf because the type `lapack_complex_float` is not defined in this library.
    fun dpftrf = dpftrf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, info : LibC::Int*)
    fun spftrf = spftrf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, info : LibC::Int*)
    # Excluded zpftrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpftri because the type `lapack_complex_float` is not defined in this library.
    fun dpftri = dpftri_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, info : LibC::Int*)
    fun spftri = spftri_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, info : LibC::Int*)
    # Excluded zpftri because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpftrs because the type `lapack_complex_float` is not defined in this library.
    fun dpftrs = dpftrs_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spftrs = spftrs_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpftrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpocon because the type `lapack_complex_float` is not defined in this library.
    fun dpocon = dpocon_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun spocon = spocon_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zpocon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpoequ because the type `lapack_complex_float` is not defined in this library.
    fun dpoequ = dpoequ_(n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, scond : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun spoequ = spoequ_(n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, scond : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zpoequ because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpoequb because the type `lapack_complex_float` is not defined in this library.
    fun dpoequb = dpoequb_(n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, scond : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun spoequb = spoequb_(n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, scond : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zpoequb because the type `lapack_complex_double` is not defined in this library.
    # Excluded cporfs because the type `lapack_complex_float` is not defined in this library.
    fun dporfs = dporfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sporfs = sporfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zporfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cporfsx because the type `lapack_complex_float` is not defined in this library.
    # Excluded dporfsx because the type `const double` is not defined in this library.
    # Excluded sporfsx because the type `const float` is not defined in this library.
    # Excluded zporfsx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cposv because the type `lapack_complex_float` is not defined in this library.
    fun dposv = dposv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sposv = sposv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zposv because the type `lapack_complex_double` is not defined in this library.
    fun dsposv = dsposv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, work : LibC::Double*, swork : LibC::Float*, iter : LibC::Int*, info : LibC::Int*)
    # Excluded zcposv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cposvx because the type `lapack_complex_float` is not defined in this library.
    fun dposvx = dposvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, equed : LibC::Char*, s : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sposvx = sposvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, equed : LibC::Char*, s : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zposvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cposvxx because the type `lapack_complex_float` is not defined in this library.
    fun dposvxx = dposvxx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, equed : LibC::Char*, s : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, rpvgrw : LibC::Double*, berr : LibC::Double*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Double*, err_bnds_comp : LibC::Double*, nparams : LibC::Int*, params : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sposvxx = sposvxx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, equed : LibC::Char*, s : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, rpvgrw : LibC::Float*, berr : LibC::Float*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Float*, err_bnds_comp : LibC::Float*, nparams : LibC::Int*, params : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zposvxx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpotf2 because the type `lapack_complex_float` is not defined in this library.
    fun dpotf2 = dpotf2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun spotf2 = spotf2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zpotf2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpotrf because the type `lapack_complex_float` is not defined in this library.
    fun dpotrf = dpotrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun spotrf = spotrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zpotrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpotrf2 because the type `lapack_complex_float` is not defined in this library.
    fun dpotrf2 = dpotrf2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun spotrf2 = spotrf2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zpotrf2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpotri because the type `lapack_complex_float` is not defined in this library.
    fun dpotri = dpotri_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun spotri = spotri_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded zpotri because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpotrs because the type `lapack_complex_float` is not defined in this library.
    fun dpotrs = dpotrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spotrs = spotrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpotrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cppcon because the type `lapack_complex_float` is not defined in this library.
    fun dppcon = dppcon_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sppcon = sppcon_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zppcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cppequ because the type `lapack_complex_float` is not defined in this library.
    fun dppequ = dppequ_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, s : LibC::Double*, scond : LibC::Double*, amax : LibC::Double*, info : LibC::Int*)
    fun sppequ = sppequ_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, s : LibC::Float*, scond : LibC::Float*, amax : LibC::Float*, info : LibC::Int*)
    # Excluded zppequ because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpprfs because the type `lapack_complex_float` is not defined in this library.
    fun dpprfs = dpprfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, afp : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun spprfs = spprfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, afp : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zpprfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cppsv because the type `lapack_complex_float` is not defined in this library.
    fun dppsv = dppsv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sppsv = sppsv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zppsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cppsvx because the type `lapack_complex_float` is not defined in this library.
    fun dppsvx = dppsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, afp : LibC::Double*, equed : LibC::Char*, s : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sppsvx = sppsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, afp : LibC::Float*, equed : LibC::Char*, s : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zppsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpptrf because the type `lapack_complex_float` is not defined in this library.
    fun dpptrf = dpptrf_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, info : LibC::Int*)
    fun spptrf = spptrf_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, info : LibC::Int*)
    # Excluded zpptrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpptri because the type `lapack_complex_float` is not defined in this library.
    fun dpptri = dpptri_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, info : LibC::Int*)
    fun spptri = spptri_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, info : LibC::Int*)
    # Excluded zpptri because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpptrs because the type `lapack_complex_float` is not defined in this library.
    fun dpptrs = dpptrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spptrs = spptrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpptrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpstrf because the type `lapack_complex_float` is not defined in this library.
    fun dpstrf = dpstrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, piv : LibC::Int*, rank : LibC::Int*, tol : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun spstrf = spstrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, piv : LibC::Int*, rank : LibC::Int*, tol : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zpstrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cptcon because the type `lapack_complex_float` is not defined in this library.
    fun dptcon = dptcon_(n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sptcon = sptcon_(n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zptcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpteqr because the type `lapack_complex_float` is not defined in this library.
    fun dpteqr = dpteqr_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun spteqr = spteqr_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zpteqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cptrfs because the type `lapack_complex_float` is not defined in this library.
    fun dptrfs = dptrfs_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Double*, e : LibC::Double*, df : LibC::Double*, ef : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sptrfs = sptrfs_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Float*, e : LibC::Float*, df : LibC::Float*, ef : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zptrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cptsv because the type `lapack_complex_float` is not defined in this library.
    fun dptsv = dptsv_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Double*, e : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sptsv = sptsv_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Float*, e : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zptsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cptsvx because the type `lapack_complex_float` is not defined in this library.
    fun dptsvx = dptsvx_(fact : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Double*, e : LibC::Double*, df : LibC::Double*, ef : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun sptsvx = sptsvx_(fact : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Float*, e : LibC::Float*, df : LibC::Float*, ef : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zptsvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpttrf because the type `lapack_complex_float` is not defined in this library.
    fun dpttrf = dpttrf_(n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, info : LibC::Int*)
    fun spttrf = spttrf_(n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, info : LibC::Int*)
    # Excluded zpttrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cpttrs because the type `lapack_complex_float` is not defined in this library.
    fun dpttrs = dpttrs_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Double*, e : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun spttrs = spttrs_(n : LibC::Int*, nrhs : LibC::Int*, d : LibC::Float*, e : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zpttrs because the type `lapack_complex_double` is not defined in this library.
    fun dsbev = dsbev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssbev = ssbev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dsbev_2stage = dsbev_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssbev_2stage = ssbev_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsbevd = dsbevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssbevd = ssbevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsbevd_2stage = dsbevd_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssbevd_2stage = ssbevd_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsbevx = dsbevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssbevx = ssbevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dsbevx_2stage = dsbevx_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssbevx_2stage = ssbevx_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dsbgst = dsbgst_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, bb : LibC::Double*, ldbb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssbgst = ssbgst_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, bb : LibC::Float*, ldbb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dsbgv = dsbgv_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, bb : LibC::Double*, ldbb : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssbgv = ssbgv_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, bb : LibC::Float*, ldbb : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dsbgvd = dsbgvd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, bb : LibC::Double*, ldbb : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssbgvd = ssbgvd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, bb : LibC::Float*, ldbb : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsbgvx = dsbgvx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, bb : LibC::Double*, ldbb : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssbgvx = ssbgvx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ka : LibC::Int*, kb : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, bb : LibC::Float*, ldbb : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dsbtrd = dsbtrd_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, d : LibC::Double*, e : LibC::Double*, q : LibC::Double*, ldq : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssbtrd = ssbtrd_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, d : LibC::Float*, e : LibC::Float*, q : LibC::Float*, ldq : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dsfrk = dsfrk_(transr : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, k : LibC::Int*, alpha : LibC::Double*, a : LibC::Double*, lda : LibC::Int*, beta : LibC::Double*, c : LibC::Double*)
    fun ssfrk = ssfrk_(transr : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, n : LibC::Int*, k : LibC::Int*, alpha : LibC::Float*, a : LibC::Float*, lda : LibC::Int*, beta : LibC::Float*, c : LibC::Float*)
    # Excluded cspcon because the type `lapack_complex_float` is not defined in this library.
    fun dspcon = dspcon_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, ipiv : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sspcon = sspcon_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, ipiv : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zspcon because the type `lapack_complex_double` is not defined in this library.
    fun dspev = dspev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sspev = sspev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dspevd = dspevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sspevd = sspevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dspevx = dspevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun sspevx = sspevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dspgst = dspgst_(itype : LibC::Int*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, bp : LibC::Double*, info : LibC::Int*)
    fun sspgst = sspgst_(itype : LibC::Int*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, bp : LibC::Float*, info : LibC::Int*)
    fun dspgv = dspgv_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, bp : LibC::Double*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sspgv = sspgv_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, bp : LibC::Float*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dspgvd = dspgvd_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, bp : LibC::Double*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sspgvd = sspgvd_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, bp : LibC::Float*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dspgvx = dspgvx_(itype : LibC::Int*, jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, bp : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun sspgvx = sspgvx_(itype : LibC::Int*, jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, bp : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    # Excluded csprfs because the type `lapack_complex_float` is not defined in this library.
    fun dsprfs = dsprfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, afp : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssprfs = ssprfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, afp : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsprfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded cspsv because the type `lapack_complex_float` is not defined in this library.
    fun dspsv = dspsv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun sspsv = sspsv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zspsv because the type `lapack_complex_double` is not defined in this library.
    # Excluded cspsvx because the type `lapack_complex_float` is not defined in this library.
    fun dspsvx = dspsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, afp : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sspsvx = sspsvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, afp : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zspsvx because the type `lapack_complex_double` is not defined in this library.
    fun dsptrd = dsptrd_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, d : LibC::Double*, e : LibC::Double*, tau : LibC::Double*, info : LibC::Int*)
    fun ssptrd = ssptrd_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, d : LibC::Float*, e : LibC::Float*, tau : LibC::Float*, info : LibC::Int*)
    # Excluded csptrf because the type `lapack_complex_float` is not defined in this library.
    fun dsptrf = dsptrf_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, ipiv : LibC::Int*, info : LibC::Int*)
    fun ssptrf = ssptrf_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, ipiv : LibC::Int*, info : LibC::Int*)
    # Excluded zsptrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded csptri because the type `lapack_complex_float` is not defined in this library.
    fun dsptri = dsptri_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, ipiv : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssptri = ssptri_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, ipiv : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zsptri because the type `lapack_complex_double` is not defined in this library.
    # Excluded csptrs because the type `lapack_complex_float` is not defined in this library.
    fun dsptrs = dsptrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssptrs = ssptrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zsptrs because the type `lapack_complex_double` is not defined in this library.
    fun dstebz = dstebz_(range : LibC::Char*, order : LibC::Char*, n : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, d : LibC::Double*, e : LibC::Double*, m : LibC::Int*, nsplit : LibC::Int*, w : LibC::Double*, iblock : LibC::Int*, isplit : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun sstebz = sstebz_(range : LibC::Char*, order : LibC::Char*, n : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, d : LibC::Float*, e : LibC::Float*, m : LibC::Int*, nsplit : LibC::Int*, w : LibC::Float*, iblock : LibC::Int*, isplit : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded cstedc because the type `lapack_complex_float` is not defined in this library.
    fun dstedc = dstedc_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sstedc = sstedc_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    # Excluded zstedc because the type `lapack_complex_double` is not defined in this library.
    # Excluded cstegr because the type `lapack_complex_float` is not defined in this library.
    fun dstegr = dstegr_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sstegr = sstegr_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    # Excluded zstegr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cstein because the type `lapack_complex_float` is not defined in this library.
    fun dstein = dstein_(n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, m : LibC::Int*, w : LibC::Double*, iblock : LibC::Int*, isplit : LibC::Int*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun sstein = sstein_(n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, m : LibC::Int*, w : LibC::Float*, iblock : LibC::Int*, isplit : LibC::Int*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    # Excluded zstein because the type `lapack_complex_double` is not defined in this library.
    # Excluded cstemr because the type `lapack_complex_float` is not defined in this library.
    # Excluded dstemr because the type `lapack_logical` is not defined in this library.
    # Excluded sstemr because the type `lapack_logical` is not defined in this library.
    # Excluded zstemr because the type `lapack_complex_double` is not defined in this library.
    # Excluded csteqr because the type `lapack_complex_float` is not defined in this library.
    fun dsteqr = dsteqr_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssteqr = ssteqr_(compz : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zsteqr because the type `lapack_complex_double` is not defined in this library.
    fun dsterf = dsterf_(n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, info : LibC::Int*)
    fun ssterf = ssterf_(n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, info : LibC::Int*)
    fun dstev = dstev_(jobz : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun sstev = sstev_(jobz : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    fun dstevd = dstevd_(jobz : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sstevd = sstevd_(jobz : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dstevr = dstevr_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun sstevr = sstevr_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dstevx = dstevx_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Double*, e : LibC::Double*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun sstevx = sstevx_(jobz : LibC::Char*, range : LibC::Char*, n : LibC::Int*, d : LibC::Float*, e : LibC::Float*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    # Excluded csycon because the type `lapack_complex_float` is not defined in this library.
    fun dsycon = dsycon_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssycon = ssycon_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsycon because the type `lapack_complex_double` is not defined in this library.
    # Excluded csycon_3 because the type `lapack_complex_float` is not defined in this library.
    fun dsycon_3 = dsycon_3_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, e : LibC::Double*, ipiv : LibC::Int*, anorm : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssycon_3 = ssycon_3_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, e : LibC::Float*, ipiv : LibC::Int*, anorm : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsycon_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded csyconv because the type `lapack_complex_float` is not defined in this library.
    fun dsyconv = dsyconv_(uplo : LibC::Char*, way : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, e : LibC::Double*, info : LibC::Int*)
    fun ssyconv = ssyconv_(uplo : LibC::Char*, way : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, e : LibC::Float*, info : LibC::Int*)
    # Excluded zsyconv because the type `lapack_complex_double` is not defined in this library.
    # Excluded csyequb because the type `lapack_complex_float` is not defined in this library.
    fun dsyequb = dsyequb_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, s : LibC::Double*, scond : LibC::Double*, amax : LibC::Double*, work : LibC::Double*, info : LibC::Int*)
    fun ssyequb = ssyequb_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, s : LibC::Float*, scond : LibC::Float*, amax : LibC::Float*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zsyequb because the type `lapack_complex_double` is not defined in this library.
    fun dsyev = dsyev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssyev = ssyev_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsyev_2stage = dsyev_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssyev_2stage = ssyev_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsyevd = dsyevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssyevd = ssyevd_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsyevd_2stage = dsyevd_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssyevd_2stage = ssyevd_2stage_(jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsyevr = dsyevr_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssyevr = ssyevr_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsyevr_2stage = dsyevr_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssyevr_2stage = ssyevr_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, isuppz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsyevx = dsyevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssyevx = ssyevx_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dsyevx_2stage = dsyevx_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssyevx_2stage = ssyevx_2stage_(jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun dsygst = dsygst_(itype : LibC::Int*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssygst = ssygst_(itype : LibC::Int*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    fun dsygv = dsygv_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssygv = ssygv_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsygv_2stage = dsygv_2stage_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssygv_2stage = ssygv_2stage_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsygvd = dsygvd_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, w : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun ssygvd = ssygvd_(itype : LibC::Int*, jobz : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, w : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, liwork : LibC::Int*, info : LibC::Int*)
    fun dsygvx = dsygvx_(itype : LibC::Int*, jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, vl : LibC::Double*, vu : LibC::Double*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Double*, m : LibC::Int*, w : LibC::Double*, z : LibC::Double*, ldz : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    fun ssygvx = ssygvx_(itype : LibC::Int*, jobz : LibC::Char*, range : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, vl : LibC::Float*, vu : LibC::Float*, il : LibC::Int*, iu : LibC::Int*, abstol : LibC::Float*, m : LibC::Int*, w : LibC::Float*, z : LibC::Float*, ldz : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, ifail : LibC::Int*, info : LibC::Int*)
    # Excluded csyr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zsyr because the type `lapack_complex_double` is not defined in this library.
    # Excluded csyrfs because the type `lapack_complex_float` is not defined in this library.
    fun dsyrfs = dsyrfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssyrfs = ssyrfs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsyrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded csyrfsx because the type `lapack_complex_float` is not defined in this library.
    # Excluded dsyrfsx because the type `const double` is not defined in this library.
    # Excluded ssyrfsx because the type `const float` is not defined in this library.
    # Excluded zsyrfsx because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysv because the type `lapack_complex_float` is not defined in this library.
    fun dsysv = dsysv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssysv = ssysv_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysv because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysv_aa because the type `lapack_complex_float` is not defined in this library.
    fun dsysv_aa = dsysv_aa_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssysv_aa = ssysv_aa_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysv_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysv_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    fun dsysv_aa_2stage = dsysv_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tb : LibC::Double*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssysv_aa_2stage = ssysv_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tb : LibC::Float*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysv_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysv_rk because the type `lapack_complex_float` is not defined in this library.
    fun dsysv_rk = dsysv_rk_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, e : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssysv_rk = ssysv_rk_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, e : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysv_rk because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysv_rook because the type `lapack_complex_float` is not defined in this library.
    fun dsysv_rook = dsysv_rook_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssysv_rook = ssysv_rook_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysv_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysvx because the type `lapack_complex_float` is not defined in this library.
    fun dsysvx = dsysvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssysvx = ssysvx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysvx because the type `lapack_complex_double` is not defined in this library.
    # Excluded csysvxx because the type `lapack_complex_float` is not defined in this library.
    fun dsysvxx = dsysvxx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, af : LibC::Double*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, s : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, rcond : LibC::Double*, rpvgrw : LibC::Double*, berr : LibC::Double*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Double*, err_bnds_comp : LibC::Double*, nparams : LibC::Int*, params : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun ssysvxx = ssysvxx_(fact : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, af : LibC::Float*, ldaf : LibC::Int*, ipiv : LibC::Int*, equed : LibC::Char*, s : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, rcond : LibC::Float*, rpvgrw : LibC::Float*, berr : LibC::Float*, n_err_bnds : LibC::Int*, err_bnds_norm : LibC::Float*, err_bnds_comp : LibC::Float*, nparams : LibC::Int*, params : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsysvxx because the type `lapack_complex_double` is not defined in this library.
    # Excluded csyswapr because the type `lapack_complex_float` is not defined in this library.
    fun dsyswapr = dsyswapr_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, i1 : LibC::Int*, i2 : LibC::Int*)
    fun ssyswapr = ssyswapr_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, i1 : LibC::Int*, i2 : LibC::Int*)
    # Excluded zsyswapr because the type `lapack_complex_double` is not defined in this library.
    fun dsytrd = dsytrd_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, d : LibC::Double*, e : LibC::Double*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrd = ssytrd_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, d : LibC::Float*, e : LibC::Float*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    fun dsytrd_2stage = dsytrd_2stage_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, d : LibC::Double*, e : LibC::Double*, tau : LibC::Double*, hous2 : LibC::Double*, lhous2 : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrd_2stage = ssytrd_2stage_(vect : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, d : LibC::Float*, e : LibC::Float*, tau : LibC::Float*, hous2 : LibC::Float*, lhous2 : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded csytrf because the type `lapack_complex_float` is not defined in this library.
    fun dsytrf = dsytrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrf = ssytrf_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrf because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrf_aa because the type `lapack_complex_float` is not defined in this library.
    fun dsytrf_aa = dsytrf_aa_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrf_aa = ssytrf_aa_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrf_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrf_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    fun dsytrf_aa_2stage = dsytrf_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tb : LibC::Double*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrf_aa_2stage = ssytrf_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tb : LibC::Float*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrf_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrf_rk because the type `lapack_complex_float` is not defined in this library.
    fun dsytrf_rk = dsytrf_rk_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, e : LibC::Double*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrf_rk = ssytrf_rk_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, e : LibC::Float*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrf_rk because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrf_rook because the type `lapack_complex_float` is not defined in this library.
    fun dsytrf_rook = dsytrf_rook_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrf_rook = ssytrf_rook_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrf_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytri because the type `lapack_complex_float` is not defined in this library.
    fun dsytri = dsytri_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun ssytri = ssytri_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded zsytri because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytri2 because the type `lapack_complex_float` is not defined in this library.
    fun dsytri2 = dsytri2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytri2 = ssytri2_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytri2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytri2x because the type `lapack_complex_float` is not defined in this library.
    fun dsytri2x = dsytri2x_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Double*, nb : LibC::Int*, info : LibC::Int*)
    fun ssytri2x = ssytri2x_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, work : LibC::Float*, nb : LibC::Int*, info : LibC::Int*)
    # Excluded zsytri2x because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytri_3 because the type `lapack_complex_float` is not defined in this library.
    fun dsytri_3 = dsytri_3_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, e : LibC::Double*, ipiv : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytri_3 = ssytri_3_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, e : LibC::Float*, ipiv : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytri_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrs because the type `lapack_complex_float` is not defined in this library.
    fun dsytrs = dsytrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssytrs = ssytrs_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrs2 because the type `const lapack_complex_float` is not defined in this library.
    # Excluded dsytrs2 because the type `const double` is not defined in this library.
    # Excluded ssytrs2 because the type `const float` is not defined in this library.
    # Excluded zsytrs2 because the type `const lapack_complex_double` is not defined in this library.
    # Excluded csytrs_3 because the type `lapack_complex_float` is not defined in this library.
    fun dsytrs_3 = dsytrs_3_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, e : LibC::Double*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssytrs_3 = ssytrs_3_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, e : LibC::Float*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrs_3 because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrs_aa because the type `lapack_complex_float` is not defined in this library.
    fun dsytrs_aa = dsytrs_aa_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun ssytrs_aa = ssytrs_aa_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrs_aa because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrs_aa_2stage because the type `lapack_complex_float` is not defined in this library.
    fun dsytrs_aa_2stage = dsytrs_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tb : LibC::Double*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssytrs_aa_2stage = ssytrs_aa_2stage_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tb : LibC::Float*, ltb : LibC::Int*, ipiv : LibC::Int*, ipiv2 : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrs_aa_2stage because the type `lapack_complex_double` is not defined in this library.
    # Excluded csytrs_rook because the type `lapack_complex_float` is not defined in this library.
    fun dsytrs_rook = dsytrs_rook_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun ssytrs_rook = ssytrs_rook_(uplo : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ipiv : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded zsytrs_rook because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctbcon because the type `lapack_complex_float` is not defined in this library.
    fun dtbcon = dtbcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun stbcon = stbcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztbcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctbrfs because the type `lapack_complex_float` is not defined in this library.
    fun dtbrfs = dtbrfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun stbrfs = stbrfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztbrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctbtrs because the type `lapack_complex_float` is not defined in this library.
    fun dtbtrs = dtbtrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Double*, ldab : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun stbtrs = stbtrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, kd : LibC::Int*, nrhs : LibC::Int*, ab : LibC::Float*, ldab : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded ztbtrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctfsm because the type `lapack_complex_float` is not defined in this library.
    fun dtfsm = dtfsm_(transr : LibC::Char*, side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, m : LibC::Int*, n : LibC::Int*, alpha : LibC::Double*, a : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*)
    fun stfsm = stfsm_(transr : LibC::Char*, side : LibC::Char*, uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, m : LibC::Int*, n : LibC::Int*, alpha : LibC::Float*, a : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*)
    # Excluded ztfsm because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctftri because the type `lapack_complex_float` is not defined in this library.
    fun dtftri = dtftri_(transr : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Double*, info : LibC::Int*)
    fun stftri = stftri_(transr : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Float*, info : LibC::Int*)
    # Excluded ztftri because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctfttp because the type `lapack_complex_float` is not defined in this library.
    fun dtfttp = dtfttp_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, arf : LibC::Double*, ap : LibC::Double*, info : LibC::Int*)
    fun stfttp = stfttp_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, arf : LibC::Float*, ap : LibC::Float*, info : LibC::Int*)
    # Excluded ztfttp because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctfttr because the type `lapack_complex_float` is not defined in this library.
    fun dtfttr = dtfttr_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, arf : LibC::Double*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun stfttr = stfttr_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, arf : LibC::Float*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded ztfttr because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctgevc because the type `lapack_logical` is not defined in this library.
    # Excluded dtgevc because the type `lapack_logical` is not defined in this library.
    # Excluded stgevc because the type `lapack_logical` is not defined in this library.
    # Excluded ztgevc because the type `lapack_logical` is not defined in this library.
    # Excluded ctgexc because the type `lapack_logical` is not defined in this library.
    # Excluded dtgexc because the type `lapack_logical` is not defined in this library.
    # Excluded stgexc because the type `lapack_logical` is not defined in this library.
    # Excluded ztgexc because the type `lapack_logical` is not defined in this library.
    # Excluded ctgsen because the type `lapack_logical` is not defined in this library.
    # Excluded dtgsen because the type `lapack_logical` is not defined in this library.
    # Excluded stgsen because the type `lapack_logical` is not defined in this library.
    # Excluded ztgsen because the type `lapack_logical` is not defined in this library.
    # Excluded ctgsja because the type `lapack_complex_float` is not defined in this library.
    fun dtgsja = dtgsja_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, tola : LibC::Double*, tolb : LibC::Double*, alpha : LibC::Double*, beta : LibC::Double*, u : LibC::Double*, ldu : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, work : LibC::Double*, ncycle : LibC::Int*, info : LibC::Int*)
    fun stgsja = stgsja_(jobu : LibC::Char*, jobv : LibC::Char*, jobq : LibC::Char*, m : LibC::Int*, p : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, tola : LibC::Float*, tolb : LibC::Float*, alpha : LibC::Float*, beta : LibC::Float*, u : LibC::Float*, ldu : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, work : LibC::Float*, ncycle : LibC::Int*, info : LibC::Int*)
    # Excluded ztgsja because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctgsna because the type `lapack_logical` is not defined in this library.
    # Excluded dtgsna because the type `lapack_logical` is not defined in this library.
    # Excluded stgsna because the type `lapack_logical` is not defined in this library.
    # Excluded ztgsna because the type `lapack_logical` is not defined in this library.
    # Excluded ctgsyl because the type `lapack_complex_float` is not defined in this library.
    fun dtgsyl = dtgsyl_(trans : LibC::Char*, ijob : LibC::Int*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, d : LibC::Double*, ldd : LibC::Int*, e : LibC::Double*, lde : LibC::Int*, f : LibC::Double*, ldf : LibC::Int*, dif : LibC::Double*, scale : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    fun stgsyl = stgsyl_(trans : LibC::Char*, ijob : LibC::Int*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, d : LibC::Float*, ldd : LibC::Int*, e : LibC::Float*, lde : LibC::Int*, f : LibC::Float*, ldf : LibC::Int*, dif : LibC::Float*, scale : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztgsyl because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpcon because the type `lapack_complex_float` is not defined in this library.
    fun dtpcon = dtpcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun stpcon = stpcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztpcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctplqt because the type `lapack_complex_float` is not defined in this library.
    fun dtplqt = dtplqt_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, mb : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun stplqt = stplqt_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, mb : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded ztplqt because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctplqt2 because the type `lapack_complex_float` is not defined in this library.
    fun dtplqt2 = dtplqt2_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, info : LibC::Int*)
    fun stplqt2 = stplqt2_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, info : LibC::Int*)
    # Excluded ztplqt2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpmlqt because the type `lapack_complex_float` is not defined in this library.
    fun dtpmlqt = dtpmlqt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, mb : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun stpmlqt = stpmlqt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, mb : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded ztpmlqt because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpmqrt because the type `lapack_complex_float` is not defined in this library.
    fun dtpmqrt = dtpmqrt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, nb : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun stpmqrt = stpmqrt_(side : LibC::Char*, trans : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, nb : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded ztpmqrt because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpqrt because the type `lapack_complex_float` is not defined in this library.
    fun dtpqrt = dtpqrt_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, nb : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun stpqrt = stpqrt_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, nb : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded ztpqrt because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpqrt2 because the type `lapack_complex_float` is not defined in this library.
    fun dtpqrt2 = dtpqrt2_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, info : LibC::Int*)
    fun stpqrt2 = stpqrt2_(m : LibC::Int*, n : LibC::Int*, l : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, info : LibC::Int*)
    # Excluded ztpqrt2 because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctprfb because the type `lapack_complex_float` is not defined in this library.
    fun dtprfb = dtprfb_(side : LibC::Char*, trans : LibC::Char*, direct : LibC::Char*, storev : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, v : LibC::Double*, ldv : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, work : LibC::Double*, ldwork : LibC::Int*)
    fun stprfb = stprfb_(side : LibC::Char*, trans : LibC::Char*, direct : LibC::Char*, storev : LibC::Char*, m : LibC::Int*, n : LibC::Int*, k : LibC::Int*, l : LibC::Int*, v : LibC::Float*, ldv : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, work : LibC::Float*, ldwork : LibC::Int*)
    # Excluded ztprfb because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctprfs because the type `lapack_complex_float` is not defined in this library.
    fun dtprfs = dtprfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun stprfs = stprfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztprfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctptri because the type `lapack_complex_float` is not defined in this library.
    fun dtptri = dtptri_(uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, info : LibC::Int*)
    fun stptri = stptri_(uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, info : LibC::Int*)
    # Excluded ztptri because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctptrs because the type `lapack_complex_float` is not defined in this library.
    fun dtptrs = dtptrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Double*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun stptrs = stptrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, ap : LibC::Float*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded ztptrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpttf because the type `lapack_complex_float` is not defined in this library.
    fun dtpttf = dtpttf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, arf : LibC::Double*, info : LibC::Int*)
    fun stpttf = stpttf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, arf : LibC::Float*, info : LibC::Int*)
    # Excluded ztpttf because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctpttr because the type `lapack_complex_float` is not defined in this library.
    fun dtpttr = dtpttr_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Double*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun stpttr = stpttr_(uplo : LibC::Char*, n : LibC::Int*, ap : LibC::Float*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded ztpttr because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrcon because the type `lapack_complex_float` is not defined in this library.
    fun dtrcon = dtrcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, rcond : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun strcon = strcon_(norm : LibC::Char*, uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, rcond : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztrcon because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrevc because the type `lapack_logical` is not defined in this library.
    # Excluded dtrevc because the type `lapack_logical` is not defined in this library.
    # Excluded strevc because the type `lapack_logical` is not defined in this library.
    # Excluded ztrevc because the type `lapack_logical` is not defined in this library.
    # Excluded ctrevc3 because the type `lapack_logical` is not defined in this library.
    # Excluded dtrevc3 because the type `lapack_logical` is not defined in this library.
    # Excluded strevc3 because the type `lapack_logical` is not defined in this library.
    # Excluded ztrevc3 because the type `lapack_logical` is not defined in this library.
    # Excluded ctrexc because the type `lapack_complex_float` is not defined in this library.
    fun dtrexc = dtrexc_(compq : LibC::Char*, n : LibC::Int*, t : LibC::Double*, ldt : LibC::Int*, q : LibC::Double*, ldq : LibC::Int*, ifst : LibC::Int*, ilst : LibC::Int*, work : LibC::Double*, info : LibC::Int*)
    fun strexc = strexc_(compq : LibC::Char*, n : LibC::Int*, t : LibC::Float*, ldt : LibC::Int*, q : LibC::Float*, ldq : LibC::Int*, ifst : LibC::Int*, ilst : LibC::Int*, work : LibC::Float*, info : LibC::Int*)
    # Excluded ztrexc because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrrfs because the type `lapack_complex_float` is not defined in this library.
    fun dtrrfs = dtrrfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, x : LibC::Double*, ldx : LibC::Int*, ferr : LibC::Double*, berr : LibC::Double*, work : LibC::Double*, iwork : LibC::Int*, info : LibC::Int*)
    fun strrfs = strrfs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, x : LibC::Float*, ldx : LibC::Int*, ferr : LibC::Float*, berr : LibC::Float*, work : LibC::Float*, iwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztrrfs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrsen because the type `lapack_logical` is not defined in this library.
    # Excluded dtrsen because the type `lapack_logical` is not defined in this library.
    # Excluded strsen because the type `lapack_logical` is not defined in this library.
    # Excluded ztrsen because the type `lapack_logical` is not defined in this library.
    # Excluded ctrsna because the type `lapack_logical` is not defined in this library.
    # Excluded dtrsna because the type `lapack_logical` is not defined in this library.
    # Excluded strsna because the type `lapack_logical` is not defined in this library.
    # Excluded ztrsna because the type `lapack_logical` is not defined in this library.
    # Excluded ctrsyl because the type `lapack_complex_float` is not defined in this library.
    fun dtrsyl = dtrsyl_(trana : LibC::Char*, tranb : LibC::Char*, isgn : LibC::Int*, m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, c : LibC::Double*, ldc : LibC::Int*, scale : LibC::Double*, info : LibC::Int*)
    fun strsyl = strsyl_(trana : LibC::Char*, tranb : LibC::Char*, isgn : LibC::Int*, m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, c : LibC::Float*, ldc : LibC::Int*, scale : LibC::Float*, info : LibC::Int*)
    # Excluded ztrsyl because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrtri because the type `lapack_complex_float` is not defined in this library.
    fun dtrtri = dtrtri_(uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, info : LibC::Int*)
    fun strtri = strtri_(uplo : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, info : LibC::Int*)
    # Excluded ztrtri because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrtrs because the type `lapack_complex_float` is not defined in this library.
    fun dtrtrs = dtrtrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, b : LibC::Double*, ldb : LibC::Int*, info : LibC::Int*)
    fun strtrs = strtrs_(uplo : LibC::Char*, trans : LibC::Char*, diag : LibC::Char*, n : LibC::Int*, nrhs : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, b : LibC::Float*, ldb : LibC::Int*, info : LibC::Int*)
    # Excluded ztrtrs because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrttf because the type `lapack_complex_float` is not defined in this library.
    fun dtrttf = dtrttf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, arf : LibC::Double*, info : LibC::Int*)
    fun strttf = strttf_(transr : LibC::Char*, uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, arf : LibC::Float*, info : LibC::Int*)
    # Excluded ztrttf because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctrttp because the type `lapack_complex_float` is not defined in this library.
    fun dtrttp = dtrttp_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, ap : LibC::Double*, info : LibC::Int*)
    fun strttp = strttp_(uplo : LibC::Char*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, ap : LibC::Float*, info : LibC::Int*)
    # Excluded ztrttp because the type `lapack_complex_double` is not defined in this library.
    # Excluded ctzrzf because the type `lapack_complex_float` is not defined in this library.
    fun dtzrzf = dtzrzf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Double*, lda : LibC::Int*, tau : LibC::Double*, work : LibC::Double*, lwork : LibC::Int*, info : LibC::Int*)
    fun stzrzf = stzrzf_(m : LibC::Int*, n : LibC::Int*, a : LibC::Float*, lda : LibC::Int*, tau : LibC::Float*, work : LibC::Float*, lwork : LibC::Int*, info : LibC::Int*)
    # Excluded ztzrzf because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunbdb because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunbdb because the type `lapack_complex_double` is not defined in this library.
    # Excluded cuncsd because the type `lapack_complex_float` is not defined in this library.
    # Excluded zuncsd because the type `lapack_complex_double` is not defined in this library.
    # Excluded cuncsd2by1 because the type `lapack_complex_float` is not defined in this library.
    # Excluded zuncsd2by1 because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungbr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungbr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunghr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunghr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunglq because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunglq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungql because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungql because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungqr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungrq because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungrq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungtr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungtr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cungtsqr_row because the type `lapack_complex_float` is not defined in this library.
    # Excluded zungtsqr_row because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmbr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmbr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmhr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmhr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmlq because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmlq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmql because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmql because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmqr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmqr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmrq because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmrq because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmrz because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmrz because the type `lapack_complex_double` is not defined in this library.
    # Excluded cunmtr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zunmtr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cupgtr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zupgtr because the type `lapack_complex_double` is not defined in this library.
    # Excluded cupmtr because the type `lapack_complex_float` is not defined in this library.
    # Excluded zupmtr because the type `lapack_complex_double` is not defined in this library.
  end
end
