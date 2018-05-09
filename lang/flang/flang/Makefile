# $OpenBSD: Makefile,v 1.11 2018/05/09 22:27:41 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-6.0.0.20180507

SHARED_LIBS +=	flang                     1.0 # 6.0
SHARED_LIBS +=	flangrti                  1.0 # 6.0
SHARED_LIBS +=	ompstub                   0.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	79dced4b9be4bb20f25ea5ebbb5cb61b1626f0c1

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

# CONFIGURE_ENV is to appease lld
CONFIGURE_ARGS =	-DCMAKE_Fortran_COMPILER="${LOCALBASE}/bin/flang" \
			-DFLANG_LIBEXECINFO="${LOCALBASE}/lib/libexecinfo.a" \
			-DFLANG_LIBOMP="${WRKBUILD}/lib/libompstub.a" \
			-DLIBPGMATH="${LOCALBASE}/lib/libpgmath.a" \
			-DWITH_WERROR=OFF

post-patch:
	@cp -R ${WRKSRC}/tools/flang2/flang2exe/x86_64-Linux \
		${WRKSRC}/tools/flang2/flang2exe/x86_64-OpenBSD

.include <bsd.port.mk>
