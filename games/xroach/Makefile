# $OpenBSD: Makefile,v 1.7 1999/11/12 14:37:34 brad Exp $

DISTNAME=	xroach
PKGNAME=	xroach-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	xroach.tar

MAINTAINER=	mickey@openbsd.org

USE_X11=	yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
