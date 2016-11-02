# $OpenBSD: Makefile,v 1.2 2016/11/02 19:27:54 danj Exp $

COMMENT =	manipulation and analysis of planar geometric objects

MODPY_EGG_VERSION =	1.5.17
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	Toblerity
GH_PROJECT =	Shapely
DISTNAME =	py-shapely-${MODPY_EGG_VERSION}

CATEGORIES =	geo

HOMEPAGE =	https://github.com/Toblerity/Shapely

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
# cython and numpy needed to build _vectorized.so
BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy \
		lang/cython

LIB_DEPENDS =	geo/geos
WANTLIB =	geos_c pthread ${MODPY_WANTLIB}

TEST_DEPENDS =	devel/py-test

do-test:
	# gross
	cp ${WRKSRC}/lib*/shapely/vectorized/_vectorized.so ${WRKSRC}/shapely/vectorized/
	py.test ${WRKSRC}/tests

.include <bsd.port.mk>
