# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:48 espie Exp $

COMMENT =		high-level cross-protocol url-grabber

MODPY_EGG_VERSION =	3.9.1
DISTNAME =		urlgrabber-${MODPY_EGG_VERSION}
PKGNAME =		py-urlgrabber-${MODPY_EGG_VERSION}

CATEGORIES =		www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=u/urlgrabber/}

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/py-curl

.include <bsd.port.mk>
