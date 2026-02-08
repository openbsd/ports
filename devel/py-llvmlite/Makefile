COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_DISTV =	0.46.0
GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# https://github.com/numba/llvmlite
HOMEPAGE =	https://llvmlite.readthedocs.io/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} llvm${MODCLANG_VERSION}/lib/LLVM m

COMPILER =	base-clang
MODULES =	lang/clang \
		lang/python
USE_LLD =	ports
BUILD_DEPENDS =	devel/cmake/core \
		devel/ninja
LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS}

# llvmlite 0.45.x/0.46.x are for llvm 20.x only
# https://github.com/numba/llvmlite?tab=readme-ov-file#compatibility
MODCLANG_VERSION= 20

MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	llvmlite/tests

MAKE_ENV=	CMAKE_PREFIX_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake \
		LLVMLITE_SHARED=1 \
		LLVMLITE_LTO=0 \
		CMAKE_ARGS=-DCMAKE_VERBOSE_MAKEFILE=on

xxpre-build:
	cd ${WRKSRC} && \
	${CXX} -shared `llvm-config --cxxflags` -fPIC ${CXXFLAGS} `llvm-config --ldflags` ${LDFLAGS} -o ffi/libllvmlite.so ffi/*.cpp `llvm-config --libs all`

.include <bsd.port.mk>
