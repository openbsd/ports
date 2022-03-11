COMMENT =	unittest subTest() support and subtests fixture

# 0.7.0 needs pytest 0.7.0
MODPY_EGG_VERSION =	0.6.0

DISTNAME =	pytest-subtests-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-subtests

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR =		python3
FLAVORS =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
