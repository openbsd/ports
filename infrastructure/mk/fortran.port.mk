# $OpenBSD: fortran.port.mk,v 1.13 2016/08/25 14:53:46 dcoppa Exp $

MODFORTRAN_COMPILER ?= g77

.if empty(MODFORTRAN_COMPILER)
ERRORS += "Fatal: need to specify MODFORTRAN_COMPILER"
.endif

.if ${MODFORTRAN_COMPILER:L} == "g77"
MODFORTRAN_BUILD_DEPENDS += lang/g77 devel/libf2c
MODFORTRAN_LIB_DEPENDS += devel/libf2c
MODFORTRAN_WANTLIB += g2c
.elif ${MODFORTRAN_COMPILER:L} == "gfortran"
MODULES += gcc4
MODGCC4_ARCHS ?= *
MODGCC4_LANGS += fortran
MODFORTRAN_BUILD_DEPENDS += lang/gcc/4.9,-f95>=4.9,<4.10
MODFORTRAN_LIB_DEPENDS += ${MODGCC4_CPPLIBDEP}
MODFORTRAN_WANTLIB += gfortran>=3
.  if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
MODFORTRAN_WANTLIB += quadmath
.  endif
.else
ERRORS += "Fatal: MODFORTRAN_COMPILER must be one of: g77 gfortran"
.endif
