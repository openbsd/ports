COMMENT =		basic inter-process locks

MODPY_EGG_VERSION =	2.0
DISTNAME =		zc.lockfile-${MODPY_EGG_VERSION}
PKGNAME =		py-zc-lockfile${DISTNAME}
REVISION =		6

CATEGORIES =		devel

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_TEST_DIR =	${WRKSRC}/src
MODPY_PYTEST_ARGS =	zc/lockfile/tests.py

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
