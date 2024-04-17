COMMENT =		basic implementation of the __geo_interface__

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		pygeoif-${MODPY_EGG_VERSION}
PKGNAME =		py-geoif-${MODPY_EGG_VERSION}

CATEGORIES =		geo devel

HOMEPAGE =	https://github.com/cleder/pygeoif/
# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=		python3

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	pygeoif
RUN_DEPENDS =		devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
