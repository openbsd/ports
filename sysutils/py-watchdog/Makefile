COMMENT =		filesystem event monitoring

MODPY_DISTV =	2.3.1
DISTNAME =		watchdog-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		sysutils

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-flaky \
			textproc/py-yaml

.include <bsd.port.mk>
