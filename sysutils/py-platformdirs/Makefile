COMMENT =		determine appropriate platform-specific directories

MODPY_EGG_VERSION =	2.5.2
DISTNAME =		platformdirs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/platformdirs/platformdirs

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
MODPY_PYTEST =		Yes
MODPY_TEST_LIBDIR =	src

BUILD_DEPENDS =		devel/py-hatch-vcs${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
