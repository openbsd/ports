COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	20.16.3
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://virtualenv.pypa.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests
MODPY_PEP517 =		setuptools

# messes up naming of packaged wheels
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		sysutils/py-distlib${MODPY_FLAVOR} \
			sysutils/py-filelock${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR}

.include <bsd.port.mk>
