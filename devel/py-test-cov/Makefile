COMMENT =		pytest plugin for measuring coverage

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		pytest-cov-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	-v
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			textproc/py-tomli${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-fields${MODPY_FLAVOR} \
			devel/py-process-tests${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}
# also wants py-hunter?

.include <bsd.port.mk>
