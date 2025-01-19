COMMENT =		basic inter-process locks

MODPY_DISTV =		3.0.post1
DISTNAME =		zc.lockfile-${MODPY_DISTV}
PKGNAME =		py-zc-lockfile-${MODPY_DISTV:S/.post/pl/}

CATEGORIES =		devel

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

MODPY_PYTEST_ARGS =	src/zc/lockfile/tests.py

RUN_DEPENDS =		devel/py-setuptools

.include <bsd.port.mk>
