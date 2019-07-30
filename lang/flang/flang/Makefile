# $OpenBSD: Makefile,v 1.46 2019/07/30 03:49:58 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-8.0.0.20190726

SHARED_LIBS +=	flang                     1.5 # 8.0
SHARED_LIBS +=	flangrti                  4.1 # 8.0
SHARED_LIBS +=	ompstub                   0.0 # 8.0

GH_PROJECT =	flang
GH_COMMIT =	578133e3edd0cf2f71b8e25e05ed8da8060c6a74

WANTLIB += ${COMPILER_LIBCXX} aio_compat c execinfo m pgmath z

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

# don't pick up llvm-config(1) from base
pre-configure:
	ln -sf ${LOCALBASE}/bin/llvm-config ${WRKDIR}/bin/llvm-config

# Don't use the LLVM shared library.
post-configure:
	sed -i \
	"s,-lLLVM-8,`${LOCALBASE}/bin/llvm-config --libs all --link-static --ignore-libllvm` -lz,g" \
	${WRKBUILD}/tools/flang1/flang1exe/CMakeFiles/flang1.dir/link.txt \
	${WRKBUILD}/tools/flang2/flang2exe/CMakeFiles/flang2.dir/link.txt

.include <bsd.port.mk>
