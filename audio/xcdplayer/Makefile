# $OpenBSD: Makefile,v 1.16 2002/10/24 22:20:04 naddy Exp $

COMMENT=	"CD player for X11"
DISTNAME=	xcdplayer-2.2
CATEGORIES=	audio

MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	imake
NO_REGRESS=	Yes

pre-patch:
	@cp ${FILESDIR}/cdrom_freebsd.{c,h} ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
