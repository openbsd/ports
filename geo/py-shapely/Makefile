# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:55 sthen Exp $

COMMENT =	manipulation and analysis of planar geometric objects

MODPY_EGG_VERSION =	1.6.4
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	Toblerity
GH_PROJECT =	Shapely
DISTNAME =	py-shapely-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	geo

HOMEPAGE =	https://github.com/Toblerity/Shapely

# BSD
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODULES =	lang/python
# cython and numpy needed to build _vectorized.so
BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/geos
WANTLIB =	geos_c pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

post-patch:
	${SUBST_CMD} ${WRKSRC}/setup.py

do-test:
	# gross
	cp ${WRKSRC}/lib*/shapely/vectorized/_vectorized.so ${WRKSRC}/shapely/vectorized/
	py.test${MODPY_BIN_SUFFIX} ${WRKSRC}/tests

.include <bsd.port.mk>
