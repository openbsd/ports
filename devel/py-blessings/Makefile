COMMENT =		wrapper around terminal coloring, styling, and positioning

MODPY_DISTV =	1.7
DISTNAME =		blessings-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	blessings/tests.py

TEST_DEPENDS =		devel/py-nose
RUN_DEPENDS =		devel/py-six

.include <bsd.port.mk>
