# $OpenBSD: Makefile,v 1.2 2021/11/10 01:07:06 kevlo Exp $

ONLY_FOR_ARCHS =	aarch64

COMMENT =	Arm compute library

V = 		21.08
PKGNAME =	arm-compute-library-${V}

GH_ACCOUNT =	ARM-software
GH_PROJECT =	ComputeLibrary
GH_TAGNAME =	v${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ARM-software/ComputeLibrary

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

SO_VERSION =	0.0
ACL_LIBS =	arm_compute \
		arm_compute_core \
		arm_compute_graph

.for _lib in ${ACL_LIBS}
SHARED_LIBS +=	${_lib} ${SO_VERSION}
.endfor

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m

COMPILER =	base-clang ports-gcc

# "build=native" here just means "not cross-compiled"
MODSCONS_FLAGS =	Werror=0 neon=1 opencl=0 embed_kernels=0 examples=0 \
			os=openbsd arch=arm64-v8a build=native \
			extra_cxx_flags=-fPIC

MODULES =	devel/scons

MAKE_ENV =	CC="${CC}" \
		CXX="${CXX}"

do-install:
.for dir in arm_compute support utils
	cp -R ${WRKSRC}/${dir} ${PREFIX}/include
.endfor
	cp -R ${WRKSRC}/include/* ${PREFIX}/include
.for _lib in ${ACL_LIBS}
	${INSTALL_DATA} ${WRKSRC}/build/lib${_lib}.so \
                ${PREFIX}/lib/lib${_lib}.so.${SO_VERSION}
.endfor
	${INSTALL_DATA} ${WRKSRC}/build/*.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arm-compute-library
	${INSTALL_DATA} ${WRKSRC}/examples/*.{h,cpp} \
		${PREFIX}/share/examples/arm-compute-library
	cp -R ${WRKSRC}/examples/gemm_tuner \
		${PREFIX}/share/examples/arm-compute-library

.include <bsd.port.mk>
