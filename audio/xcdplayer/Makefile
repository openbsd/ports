# $OpenBSD: Makefile,v 1.12 2001/04/13 03:24:28 obecian Exp $

COMMENT=	"CD player for X11"
DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.{c,h} ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
