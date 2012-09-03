# $OpenBSD: Makefile,v 1.1.1.1 2012/09/03 15:09:10 jasper Exp $

COMMENT =		high-level cross-protocol url-grabber

MODPY_EGG_VERSION =	3.9.1
DISTNAME =		urlgrabber-${MODPY_EGG_VERSION}
PKGNAME =		py-urlgrabber-${MODPY_EGG_VERSION}

CATEGORIES =		www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=u/urlgrabber/}

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/py-curl

.include <bsd.port.mk>
