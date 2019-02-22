# $OpenBSD: Makefile,v 1.1.1.1 2019/02/22 16:39:54 abieber Exp $

COMMENT =		library to enable your code run as a daemon process

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		daemonize-${MODPY_EGG_VERSION}
PKGNAME =		py-daemonize-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# Lie; no tests on PyPI, and the tests on GitHub are broken/insecure.
# The brave ones are invited to read tests/test.py and cry of desperation.
NO_TEST =		Yes

.include <bsd.port.mk>
