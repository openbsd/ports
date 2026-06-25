# $OpenBSD: fortran.port.mk,v 1.20 2026/06/25 07:27:00 jca Exp $

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
# XXX revisit when we move to lang/gcc/11; also see ports which use
# fortran libraries that have "USE_NOBTCFI-aarch64.*# fortran"
USE_NOBTCFI-aarch64 ?=	Yes
.else
ERRORS += "Fatal: MODFORTRAN_COMPILER must be one of: gfortran"
.endif
