# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:33 sthen Exp $

COMMENT =		library to enable your code run as a daemon process

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		daemonize-${MODPY_EGG_VERSION}
PKGNAME =		py-daemonize-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		sysutils devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =	python3

# Lie; no tests on PyPI, and the tests on GitHub are broken/insecure.
# The brave ones are invited to read tests/test.py and cry of desperation.
NO_TEST =		Yes

.include <bsd.port.mk>
