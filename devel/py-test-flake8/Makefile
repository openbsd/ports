COMMENT =	py.test plugin to check FLAKE8 requirements

DISTNAME =		pytest-flake8-${MODPY_EGG_VERSION}
PKGNAME =		py-test-flake8-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.1.1
REVISION =		1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tholo/pytest-flake8

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/flake8 \
			devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
