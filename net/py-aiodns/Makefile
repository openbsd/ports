# $OpenBSD: Makefile,v 1.15 2021/11/02 00:01:40 sthen Exp $

COMMENT =		simple DNS resolver for asyncio

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		aiodns-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		0

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

RUN_DEPENDS =		net/py-cares${MODPY_FLAVOR}>=4.0.0

.include <bsd.port.mk>
