COMMENT =		pytest plugin that allows multiple failures per test

MODPY_DISTV =		2.5.3
DISTNAME =		pytest_check-${MODPY_DISTV}
PKGNAME =		py-test-check-${MODPY_DISTV}

CATEGORIES =		devel
HOMEPAGE =		https://github.com/okken/pytest-check
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-test
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
