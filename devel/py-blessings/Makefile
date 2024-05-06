COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_EGG_VERSION =	1.7
DISTNAME =		blessings-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	blessings/tests.py

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
