COMMENT =	manipulation and analysis of planar geometric objects

MODPY_DISTV =	2.2.0
GH_TAGNAME =	${MODPY_DISTV}
GH_ACCOUNT =	shapely
GH_PROJECT =	shapely
PKGNAME =	py-shapely-${MODPY_DISTV:S/.post/pl/}

CATEGORIES =	geo

HOMEPAGE =	https://github.com/shapely/shapely

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	mesonpy

RUN_DEPENDS +=	math/py-numpy
# cython and numpy needed to build _vectorized.so
BUILD_DEPENDS +=${RUN_DEPENDS} \
		lang/cython

LIB_DEPENDS =	geo/geos
WANTLIB =	geos_c

# solves 'from shapely.lib import GEOSException' failures with mesonpy
MODPY_TEST_DIR =	${WRKINST}${MODPY_SITEPKG}

test: fake

.include <bsd.port.mk>
