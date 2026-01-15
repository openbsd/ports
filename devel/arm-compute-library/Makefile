ONLY_FOR_ARCHS =	aarch64

DPB_PROPERTIES =	parallel

COMMENT =	Arm compute library

V =		52.7.0
PKGNAME =	arm-compute-library-${V}

GH_ACCOUNT =	ARM-software
GH_PROJECT =	ComputeLibrary
GH_TAGNAME =	v${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ARM-software/ComputeLibrary

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

GRAPH_SO_V =	2.7
COMPUTE_SO_V =	4.4

SHARED_LIBS +=	arm_compute ${COMPUTE_SO_V}
SHARED_LIBS +=	arm_compute_graph ${GRAPH_SO_V}

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m

COMPILER =	base-clang ports-gcc

# "build=native" here just means "not cross-compiled"
MODSCONS_FLAGS =	Werror=0 neon=1 opencl=0 embed_kernels=0 examples=0 \
			os=openbsd arch=armv8a build=native

MODULES =	devel/scons

MAKE_ENV =	CC="${CC}" \
		CXX="${CXX}"

# avoid setting scons.port.mk's default MODSCONS_ENV variables, which
# break the build of this port
MODSCONS_ENV =

do-install:
.for dir in arm_compute support utils
	cp -R ${WRKSRC}/${dir} ${PREFIX}/include
.endfor
	cp -R ${WRKSRC}/include/* ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/build/libarm_compute.so \
                ${PREFIX}/lib/libarm_compute.so.${COMPUTE_SO_V}
	${INSTALL_DATA} ${WRKSRC}/build/libarm_compute_graph.so \
                ${PREFIX}/lib/libarm_compute_graph.so.${GRAPH_SO_V}
	${INSTALL_DATA} ${WRKSRC}/build/*.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arm-compute-library
	${INSTALL_DATA} ${WRKSRC}/examples/*.{h,cpp} \
		${PREFIX}/share/examples/arm-compute-library
	cp -R ${WRKSRC}/examples/gemm_tuner \
		${PREFIX}/share/examples/arm-compute-library

.include <bsd.port.mk>
