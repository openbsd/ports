# $OpenBSD: Makefile,v 1.3 1999/09/27 15:41:33 brad Exp $

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes

post-extract:
	@${RM} -f ${WRKSRC}/obj

.include <bsd.port.mk>
