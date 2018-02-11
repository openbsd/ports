# $OpenBSD: Makefile,v 1.7 2018/02/11 15:52:26 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-5.0.1.20180209

SHARED_LIBS +=	flang                     0.0 # 5.0
SHARED_LIBS +=	flangrti                  0.0 # 5.0
SHARED_LIBS +=	ompstub                   0.0 # 5.0

GH_PROJECT =	flang
GH_COMMIT =	c8988c13b6cf083255dca6b2c39b3b6999ef8ee0

WANTLIB += c execinfo m pthread

# C11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm \
		${RUN_DEPENDS}

LIB_DEPENDS =	devel/libexecinfo

RUN_DEPENDS =	lang/flang/driver

# Fortran support has not been integrated into Ninja yet
USE_NINJA =	No

CONFIGURE_ARGS =	-DCMAKE_Fortran_COMPILER="${LOCALBASE}/bin/flang" \
			-DFLANG_LIBEXECINFO="${LOCALBASE}/lib/libexecinfo.a" \
			-DFLANG_LIBOMP="${WRKBUILD}/lib/libompstub.a" \
			-DWITH_WERROR=OFF

post-patch:
	@cp -R ${WRKSRC}/tools/flang2/flang2exe/x86_64-Linux \
		${WRKSRC}/tools/flang2/flang2exe/x86_64-OpenBSD

.include <bsd.port.mk>
