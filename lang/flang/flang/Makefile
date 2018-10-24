# $OpenBSD: Makefile,v 1.31 2018/10/24 14:28:06 sthen Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-6.0.0.20181017
REVISION =	0

SHARED_LIBS +=	flang                     1.4 # 6.0
SHARED_LIBS +=	flangrti                  3.0 # 6.0
SHARED_LIBS +=	ompstub                   0.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	0479dc0252ef30581027355f5bb3fddad4d1edcc

WANTLIB += ${COMPILER_LIBCXX} aio_compat c execinfo m pgmath

# C11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm \
		${RUN_DEPENDS}

LIB_DEPENDS =	devel/libaio_compat \
		devel/libexecinfo \
		lang/flang/libpgmath

RUN_DEPENDS =	lang/flang/driver

# Fortran support has not been integrated into Ninja yet
USE_NINJA =	No

CONFIGURE_ARGS =	-DCMAKE_Fortran_COMPILER="${LOCALBASE}/bin/flang" \
			-DFLANG_LIBEXECINFO="${LOCALBASE}/lib/libexecinfo.a" \
			-DFLANG_LIBOMP="${WRKBUILD}/lib/libompstub.a" \
			-DLIBPGMATH="${LOCALBASE}/lib/libpgmath.a" \
			-DWITH_WERROR=OFF

.include <bsd.port.mk>
