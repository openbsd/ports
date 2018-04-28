# $OpenBSD: Makefile,v 1.2 2018/04/28 21:18:46 danj Exp $

COMMENT =		port of the Tulip project (asyncio module, PEP 3156)

MODPY_EGG_VERSION =	2.1
DISTNAME =		trollius-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS = 		devel/py-futures \
			devel/py-six

.include <bsd.port.mk>
