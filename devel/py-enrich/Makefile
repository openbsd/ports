COMMENT =		extends Python Rich library functionality

MODPY_DISTV =	1.2.7
DISTNAME =		enrich-${MODPY_DISTV}
PKGNAME =		py-enrich-${MODPY_DISTV}
REVISION =		3

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive
RUN_DEPENDS =		devel/py-rich
TEST_DEPENDS =		devel/py-test-mock

.include <bsd.port.mk>
