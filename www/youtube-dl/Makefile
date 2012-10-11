# $OpenBSD: Makefile,v 1.31 2012/10/11 10:30:23 dcoppa Exp $

COMMENT =	command-line program to download videos from YouTube.com

MODPY_EGG_VERSION = 2012.10.09

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.com/youtube-dl/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://spacehopper.org/mirrors/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

MODPY_BADEGGS =	youtube-dl

NO_REGRESS =	Yes

PKG_ARCH =	*

pre-configure:
	@cp ${FILESDIR}/setup.py ${WRKSRC}/

.include <bsd.port.mk>
