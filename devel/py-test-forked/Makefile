COMMENT =		run each test in a forked subprocess

MODPY_EGG_VERSION =	1.6.0

DISTNAME =		pytest-forked-${MODPY_EGG_VERSION}
PKGNAME =		py-test-forked-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-forked

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	-v

RUN_DEPENDS =		devel/py-py${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
