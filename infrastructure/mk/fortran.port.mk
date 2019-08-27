# $OpenBSD: fortran.port.mk,v 1.17 2019/08/27 14:30:38 jca Exp $

MODFORTRAN_COMPILER ?= gfortran

.if empty(MODFORTRAN_COMPILER)
ERRORS += "Fatal: need to specify MODFORTRAN_COMPILER"
.endif

.if ${MODFORTRAN_COMPILER:L} == "gfortran"
MODULES += gcc4
MODGCC4_ARCHS ?= *
MODGCC4_LANGS += fortran
MODFORTRAN_BUILD_DEPENDS += ${MODGCC4_FORTRANDEP}
MODFORTRAN_LIB_DEPENDS += ${MODGCC4_FORTRANLIBDEP}
MODFORTRAN_WANTLIB += ${MODGCC4_FORTRANWANTLIB}
.elif ${MODFORTRAN_COMPILER:L} == "flang"
MODFORTRAN_BUILD_DEPENDS += lang/flang/flang
MODFORTRAN_LIB_DEPENDS += lang/flang/flang
MODFORTRAN_WANTLIB += flang flangmain flangrti pgmath
.else
ERRORS += "Fatal: MODFORTRAN_COMPILER must be one of: gfortran flang"
.endif
