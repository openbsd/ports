# $OpenBSD: Makefile,v 1.4 2016/01/07 21:35:29 jasper Exp $

COMMENT =		high-level cross-protocol url-grabber

MODPY_EGG_VERSION =	3.9.1
DISTNAME =		urlgrabber-${MODPY_EGG_VERSION}
PKGNAME =		py-urlgrabber-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/py-curl

.include <bsd.port.mk>
