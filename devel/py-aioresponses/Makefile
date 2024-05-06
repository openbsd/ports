COMMENT =		mock out requests made by ClientSession from aiohttp

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		aioresponses-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS = 	devel/py-pbr${MODPY_FLAVOR}

RUN_DEPENDS =		www/py-aiohttp${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-ddt${MODPY_FLAVOR}

.include <bsd.port.mk>
