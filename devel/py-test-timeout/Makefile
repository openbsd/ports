COMMENT =		pytest plugin to abort hanging tests

MODPY_DISTV =		2.4.0
DISTNAME =		pytest_timeout-${MODPY_DISTV}
PKGNAME =		py-test-timeout-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-timeout

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-test
TEST_DEPENDS =		devel/py-pexpect \
			devel/py-test-cov

TEST_ENV +=		PYTHONPATH="."

.include <bsd.port.mk>
