# $OpenBSD: Makefile,v 1.5 1999/09/22 22:23:20 brad Exp $

DISTNAME=	xroach
PKGNAME=	xroach-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/bsd-sources/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar

MAINTAINER=	mickey@openbsd.org

USE_X11=	yes

post-extract:
	@${RM} -f ${WRKSRC}/obj

.include <bsd.port.mk>
