COMMENT =	manipulation and analysis of planar geometric objects

MODPY_EGG_VERSION =	2.0.5
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	shapely
GH_PROJECT =	shapely
PKGNAME =	py-shapely-${MODPY_EGG_VERSION:S/.post/pl/}

CATEGORIES =	geo

HOMEPAGE =	https://github.com/shapely/shapely

# BSD
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =	lang/python

MODPY_PYBUILD =		setuptools
# cython and numpy needed to build _vectorized.so
BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/geos
WANTLIB =	geos_c

pre-test:
	# gross
	cp ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}/shapely/*.so \
		${WRKSRC}/shapely/

.include <bsd.port.mk>
