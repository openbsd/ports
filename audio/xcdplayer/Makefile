# $OpenBSD: Makefile,v 1.5 2000/02/12 06:29:50 turan Exp $

DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=      yes

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.c ${WRKSRC}
	@cp ${FILESDIR}/cdrom_freebsd.h ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
