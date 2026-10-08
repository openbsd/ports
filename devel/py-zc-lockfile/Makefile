COMMENT =		basic inter-process locks

MODPY_DISTV =		4.0
DISTNAME =		zc_lockfile-${MODPY_DISTV}
PKGNAME =		py-zc-lockfile-${MODPY_DISTV:S/.post/pl/}

CATEGORIES =		devel

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

MODPY_PYTEST_ARGS =	src/zc/lockfile/tests.py

RUN_DEPENDS =		sysutils/py-standard-pkg-resources
TEST_DEPENDS =		devel/py-zopetesting

.include <bsd.port.mk>
