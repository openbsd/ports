# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:54 sthen Exp $

COMMENT =	manipulation and analysis of planar geometric objects

MODPY_EGG_VERSION =	1.6.4
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	Toblerity
GH_PROJECT =	Shapely
DISTNAME =	py-shapely-${MODPY_EGG_VERSION}
REVISION =	3

CATEGORIES =	geo

HOMEPAGE =	https://github.com/Toblerity/Shapely

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

TESTLIBDIR =	lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}/shapely/

post-patch:
	${SUBST_CMD} ${WRKSRC}/setup.py

pre-test:
	# gross
	cp ${WRKSRC}/${TESTLIBDIR}/vectorized/_vectorized.so \
		${WRKSRC}/shapely/vectorized/

.include <bsd.port.mk>
