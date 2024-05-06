COMMENT =		filesystem event monitoring

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		watchdog-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		sysutils

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
