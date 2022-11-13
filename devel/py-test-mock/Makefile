COMMENT =		thin-wrapper around mock package for easier use with pytest

MODPY_EGG_VERSION =	3.8.2
DISTNAME =		pytest-mock-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/pytest-dev/pytest-mock/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${BASE_PKGPATH}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
