# $OpenBSD: Makefile,v 1.5 1999/11/12 14:40:57 brad Exp $

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	xneko.tar

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
