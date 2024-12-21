COMMENT =	Python bindings for libosmium

MODPY_DISTV =	4.0.1
GH_TAGNAME =	v${MODPY_DISTV}
GH_ACCOUNT =	osmcode
GH_PROJECT =	pyosmium
PKGNAME =	py-osmium-${MODPY_DISTV}
REVISION =	0

CATEGORIES =	geo

HOMEPAGE =	https://osmcode.org/pyosmium/

# BSD
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

MODULES =	lang/clang lang/python

MODCLANG_COMPILER_LINKS=	No

MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes
# tests make python segfault
# cf https://github.com/osmcode/pyosmium/issues/199
MODPY_PYTEST_ARGS = -v

TEST_DEPENDS +=	devel/py-test-httpserver
LIB_DEPENDS =	archivers/lz4
WANTLIB +=	${COMPILER_LIBCXX} bz2 expat lz4 m z

# cmake is run under the control of the setuptools script, this
# doesn't work with MODULES=devel/cmake
BUILD_DEPENDS +=	devel/boost \
			devel/cmake \
			geo/libosmium \
			devel/protozero \
			devel/py-pybind11

MAKE_ENV =		pybind11_DIR=`pybind11-config --cmakedir` \
			MODCMAKE_PORT_BUILD=yes \
			CXXFLAGS="${CXXFLAGS}"
CONFIGURE_ENV +=	MODCMAKE_PORT_BUILD=yes

.include <bsd.port.mk>
