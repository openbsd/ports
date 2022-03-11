COMMENT =	pytest plugin for managing processes across test runs

MODPY_EGG_VERSION =	0.18.1

DISTNAME =	pytest-xprocess-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-xprocess/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

# process spawned in test_interruption_clean_up.py doesn't find self
# just from the default PYTHONPATH setting
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
