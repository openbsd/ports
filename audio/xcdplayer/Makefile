# $OpenBSD: Makefile,v 1.6 2000/02/15 05:04:01 turan Exp $

DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=      yes

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.c ${WRKSRC}
	@cp ${FILESDIR}/cdrom_freebsd.h ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
