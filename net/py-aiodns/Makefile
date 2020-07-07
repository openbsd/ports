# $OpenBSD: Makefile,v 1.12 2020/07/07 18:39:14 paco Exp $

COMMENT =		simple DNS resolver for asyncio

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		aiodns-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-cares${MODPY_FLAVOR}

.include <bsd.port.mk>
