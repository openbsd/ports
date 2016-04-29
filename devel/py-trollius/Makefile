# $OpenBSD: Makefile,v 1.1.1.1 2016/04/29 08:20:10 danj Exp $

COMMENT =		port of the Tulip project (asyncio module, PEP 3156)

MODPY_EGG_VERSION =	2.1
DISTNAME =		trollius-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Eric Faurot <eric@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS = 		devel/py-futures \
			devel/py-six

.include <bsd.port.mk>
