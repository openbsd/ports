COMMENT =	source of XYZ tiles providers

MODPY_DISTV =	2024.9.0

DISTNAME =	xyzservices-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	geo devel

GH_ACCOUNT =	geopandas
GH_PROJECT =	xyzservices
GH_TAGNAME =	${MODPY_DISTV}

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools_scm
MAKE_ENV =      SETUPTOOLS_SCM_PRETEND_VERSION=${MODPY_DISTV}

# Many tests want to get online, but there are passing tests
TEST_DEPENDS =	geo/py-mercantile \
		www/py-requests

.include <bsd.port.mk>
