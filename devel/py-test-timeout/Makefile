COMMENT =		pytest plugin to abort hanging tests

MODPY_DISTV =	1.4.2

DISTNAME =		pytest-timeout-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		4

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
