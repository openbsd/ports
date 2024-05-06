BROKEN =	needs an update for LLVM 16. latest current upstream version (0.41.1) only supports 14.x.

COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_EGG_VERSION =	0.39.1
GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

REVISION =	1

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>, \
		Aisha Tammy <aisha@openbsd.org>

HOMEPAGE =	http://llvmlite.pydata.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} LLVM m

COMPILER =	base-clang
MODULES =	lang/python

MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS =	llvmlite/tests

FLAVORS =	python3
FLAVOR =	python3

MAKE_ENV +=	LLVM_CONFIG="/usr/bin/llvm-config" \
		LDLIBS="`llvm-config --libs all`" \
		CXXFLAGS="`llvm-config --cxxflags` -fPIC ${CFLAGS}" \
		LDFLAGS="`llvm-config --ldflags` ${LDFLAGS}"

pre-build:
	cd ${WRKSRC} && \
	${CXX} -shared `llvm-config --cxxflags` -fPIC ${CXXFLAGS} `llvm-config --ldflags` ${LDFLAGS} -o ffi/libllvmlite.so ffi/*.cpp `llvm-config --libs all`

.include <bsd.port.mk>
