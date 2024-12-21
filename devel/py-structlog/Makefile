COMMENT =		asynchronous WebDriver client

MODPY_DISTV =	24.4.0

DISTNAME =		structlog-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://www.structlog.org/

# MIT or Apache-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

# This test requires pip -e .
MODPY_PYTEST_ARGS =	--ignore tests/test_packaging.py

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

TEST_DEPENDS =		devel/py-freezegun \
			devel/py-pretend \
			devel/py-simplejson \
			devel/py-test-asyncio

.include <bsd.port.mk>
