# $OpenBSD: Makefile,v 1.16 2018/07/03 04:04:11 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-6.0.0.20180701

SHARED_LIBS +=	flang                     1.2 # 6.0
SHARED_LIBS +=	flangrti                  1.0 # 6.0
SHARED_LIBS +=	ompstub                   0.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	e7de2f6070e1ceb3eeb8563af0d8334bcce4ac93

WANTLIB += c execinfo m pgmath pthread

# C11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm \
		${RUN_DEPENDS}

LIB_DEPENDS =	devel/libexecinfo \
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
