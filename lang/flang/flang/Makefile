# $OpenBSD: Makefile,v 1.47 2019/08/12 15:41:55 bcallah Exp $

COMMENT =	LLVM Fortran compiler passes and runtime library
DISTNAME =	flang-8.0.0.20190801

SHARED_LIBS +=	flang                     1.5 # 8.0
SHARED_LIBS +=	flangrti                  4.1 # 8.0
SHARED_LIBS +=	ompstub                   0.0 # 8.0

GH_PROJECT =	flang
GH_COMMIT =	7ab2da73bac1ab637210a6a78c167f7138512a99

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
