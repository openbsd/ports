# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:49 sthen Exp $

COMMENT =		library to enable your code run as a daemon process

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		daemonize-${MODPY_EGG_VERSION}
PKGNAME =		py-daemonize-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# Lie; no tests on PyPI, and the tests on GitHub are broken/insecure.
# The brave ones are invited to read tests/test.py and cry of desperation.
NO_TEST =		Yes

.include <bsd.port.mk>
