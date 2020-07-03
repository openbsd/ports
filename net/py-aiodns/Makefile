# $OpenBSD: Makefile,v 1.11 2020/07/03 21:13:00 sthen Exp $

COMMENT =		simple DNS resolver for asyncio

# Cannot go to >=2.0.0 if we need python 2.x support
MODPY_EGG_VERSION =	1.2.0
DISTNAME =		aiodns-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		2

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests.py

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-cares${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS += 		devel/py-trollius \
			devel/py-typing
.endif

.include <bsd.port.mk>
