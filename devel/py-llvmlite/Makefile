BROKEN =	needs an update for LLVM 16. latest current upstream version (0.41.1) only supports 14.x.

COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_DISTV =	0.39.1
GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

REVISION =	2

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

MAKE_ENV +=	LLVM_CONFIG="/usr/bin/llvm-config" \
		LDLIBS="`llvm-config --libs all`" \
		CXXFLAGS="`llvm-config --cxxflags` -fPIC ${CFLAGS}" \
		LDFLAGS="`llvm-config --ldflags` ${LDFLAGS}"

pre-build:
	cd ${WRKSRC} && \
	${CXX} -shared `llvm-config --cxxflags` -fPIC ${CXXFLAGS} `llvm-config --ldflags` ${LDFLAGS} -o ffi/libllvmlite.so ffi/*.cpp `llvm-config --libs all`

.include <bsd.port.mk>
