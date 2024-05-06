COMMENT =		extends Python Rich library functionality

MODPY_EGG_VERSION =	1.2.7
DISTNAME =		enrich-${MODPY_EGG_VERSION}
PKGNAME =		py-enrich-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-rich${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
