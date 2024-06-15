COMMENT =		python wrapper for spatial index

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		Rtree-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		geo/spatialindex

TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
