COMMENT =		py.test plugin to test server connections locally

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		pytest-localserver-${MODPY_EGG_VERSION}
PKGNAME =		py-test-localserver-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

TEST_DEPENDS =		www/py-requests${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
