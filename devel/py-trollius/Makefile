# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:55 sthen Exp $

COMMENT =		port of the Tulip project (asyncio module, PEP 3156)

MODPY_EGG_VERSION =	2.1
DISTNAME =		trollius-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS = 		devel/py-futures \
			devel/py-six

.include <bsd.port.mk>
