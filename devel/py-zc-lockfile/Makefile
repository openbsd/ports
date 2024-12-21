COMMENT =		basic inter-process locks

MODPY_DISTV =	2.0
DISTNAME =		zc.lockfile-${MODPY_DISTV}
PKGNAME =		py-zc-lockfile${DISTNAME}
REVISION =		7

CATEGORIES =		devel

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/src
MODPY_PYTEST_ARGS =	zc/lockfile/tests.py

.include <bsd.port.mk>
