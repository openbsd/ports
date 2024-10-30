COMMENT =		asynchronous WebDriver client

MODPY_EGG_VERSION =	24.4.0

DISTNAME =		structlog-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://www.structlog.org/

# MIT or Apache-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

# This test requires pip -e .
MODPY_PYTEST_ARGS =	--ignore tests/test_packaging.py

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-pretend${MODPY_FLAVOR} \
			devel/py-simplejson${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR}

.include <bsd.port.mk>
