COMMENT =		curses-like terminal wrapper

MODPY_EGG_VERSION =	0.3.4
DISTNAME =		curtsies-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-blessings${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-pyte${MODPY_FLAVOR}

.include <bsd.port.mk>
