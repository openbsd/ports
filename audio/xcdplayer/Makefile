# $OpenBSD: Makefile,v 1.4 2000/01/23 05:51:32 brad Exp $

DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=      yes

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.c ${WRKSRC}
	@cp ${FILESDIR}/cdrom_freebsd.h ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
