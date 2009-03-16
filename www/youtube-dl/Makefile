# $OpenBSD: Makefile,v 1.4 2009/03/16 22:20:02 kili Exp $

COMMENT=	command-line program to download videos from YouTube.com

DISTNAME=	youtube-dl-2009.01.31
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.arrakis.es/~rggi3/youtube-dl/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.arrakis.es/~rggi3/youtube-dl/
EXTRACT_ONLY=
EXTRACT_SUFX=

MODULES=	lang/python

NO_REGRESS=	Yes

PKG_ARCH=	*

do-build:
	sed '1s,.*,#!${MODPY_BIN},' ${FULLDISTDIR}/${DISTNAME} \
	   >${WRKDIR}/youtube-dl

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/youtube-dl ${PREFIX}/bin

.include <bsd.port.mk>
