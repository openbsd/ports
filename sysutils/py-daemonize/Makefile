COMMENT =		library to enable your code run as a daemon process

MODPY_DISTV =	2.5.0
DISTNAME =		daemonize-${MODPY_DISTV}
PKGNAME =		py-daemonize-${MODPY_DISTV}
REVISION =		8

CATEGORIES =		sysutils devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# Lie; no tests on PyPI, and the tests on GitHub are broken/insecure.
# The brave ones are invited to read tests/test.py and cry of desperation.
NO_TEST =		Yes

.include <bsd.port.mk>
