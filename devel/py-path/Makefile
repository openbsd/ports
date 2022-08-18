COMMENT =		module wrapper for os.path

MODPY_EGG_VERSION =	16.4.0
DISTNAME =		path-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/path

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PEP517 =		setuptools
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore=lib

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
