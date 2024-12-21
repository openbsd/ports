COMMENT =		reusable state for writing clean Python tests

MODPY_DISTV =	3.0.0

DISTNAME =		fixtures-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		7

CATEGORIES =		devel

HOMEPAGE =		https://launchpad.net/python-fixtures

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# Apache 2.0 or 3-Clause BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	fixtures

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		devel/py-six \
			devel/py-testtools

TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
