COMMENT =	source of XYZ tiles providers

MODPY_EGG_VERSION =	2024.6.0

DISTNAME =	xyzservices-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	geo devel

GH_ACCOUNT =	geopandas
GH_PROJECT =	xyzservices
GH_TAGNAME =	${MODPY_EGG_VERSION}

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	setuptools_scm
MAKE_ENV =      SETUPTOOLS_SCM_PRETEND_VERSION=${MODPY_EGG_VERSION}

# Many tests want to get online, but there are passing tests
TEST_DEPENDS =	geo/py-mercantile${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
