# $OpenBSD: Makefile,v 1.19 2022/03/05 12:47:25 sthen Exp $

COMMENT =	manipulation and analysis of planar geometric objects

MODPY_EGG_VERSION =	1.8.1.post1
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

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
# cython and numpy needed to build _vectorized.so
BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/geos
WANTLIB =	geos_c pthread ${MODPY_WANTLIB}

post-patch:
	${SUBST_CMD} ${WRKSRC}/setup.py

pre-test:
	# gross
	cp ${WRKSRC}/${MODPY_TEST_LIBDIR}/shapely/vectorized/_vectorized*.so \
		${WRKSRC}/shapely/vectorized/

.include <bsd.port.mk>
