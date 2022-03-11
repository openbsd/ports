COMMENT =	py.test xdist plugin for distributed testing

DISTNAME =		pytest-xdist-${MODPY_EGG_VERSION}
PKGNAME =		py-test-xdist-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.5.0
MODPY_PI =		Yes

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-xdist

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	testing

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-execnet${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-apipkg${MODPY_FLAVOR}
# wants filelock
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

.include <bsd.port.mk>
