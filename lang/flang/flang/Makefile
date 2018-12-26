# $OpenBSD: Makefile,v 1.32 2018/12/26 17:37:14 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-6.0.0.20181220

SHARED_LIBS +=	flang                     1.4 # 6.0
SHARED_LIBS +=	flangrti                  3.0 # 6.0
SHARED_LIBS +=	ompstub                   0.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	6a5cc79649f1cc4defdab0d508b724aecc740267

WANTLIB += ${COMPILER_LIBCXX} aio_compat c execinfo m pgmath

# C11
COMPILER =	base-clang ports-gcc

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
