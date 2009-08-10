# $OpenBSD: Makefile,v 1.23 2009/08/10 06:29:52 kili Exp $

COMMENT=	CD player for X11
DISTNAME=	xcdplayer-2.2
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c \
			pthread-stubs xcb

USE_X11=	Yes
CONFIGURE_STYLE=imake
NO_REGRESS=	Yes

pre-patch:
	@cp ${FILESDIR}/*.[ch] ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
