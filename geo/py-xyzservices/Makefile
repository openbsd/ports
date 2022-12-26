COMMENT =	source of XYZ tiles providers

MODPY_EGG_VERSION =	2022.9.0

DISTNAME =	xyzservices-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo devel

GH_ACCOUNT =	geopandas
GH_PROJECT =	xyzservices
GH_TAGNAME =	${MODPY_EGG_VERSION}

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	setuptools

# Many tests want to get online, but there are passing tests
TEST_DEPENDS =	geo/py-mercantile${MODPY_FLAVOR}

.include <bsd.port.mk>
