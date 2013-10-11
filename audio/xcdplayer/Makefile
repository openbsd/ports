# $OpenBSD: Makefile,v 1.29 2013/10/11 20:39:18 naddy Exp $

COMMENT=	CD player for X11
DISTNAME=	xcdplayer-2.2
REVISION=	5
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

USE_GROFF =	Yes
CONFIGURE_STYLE=imake
NO_TEST=	Yes

pre-patch:
	@cp ${FILESDIR}/*.[ch] ${WRKSRC}
	@mv ${WRKSRC}/xcdplayer.1 ${WRKSRC}/xcdplayer.man

.include <bsd.port.mk>
