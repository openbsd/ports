COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	6.0.0
REVISION =		0
DISTNAME =		flake8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pycqa/flake8

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR}<2.11.0 \
			devel/py-mccabe${MODPY_FLAVOR}<0.8.0 \
			devel/pyflakes${MODPY_FLAVOR}<3.1.0

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=src

.include <bsd.port.mk>
