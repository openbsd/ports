# $OpenBSD: Makefile,v 1.9 2000/06/10 17:39:27 espie Exp $

DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio
NEED_VERSION=	1.300
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.{c,h} ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
