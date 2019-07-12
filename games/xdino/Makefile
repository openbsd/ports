# $OpenBSD: Makefile,v 1.28 2019/07/12 20:46:27 sthen Exp $
#

COMMENT=	dino puzzle game for X11

DISTNAME=	xdino-5.5.2
REVISION =	2
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/xpuzzles/}

WRKDIST=	${WRKDIR}/xdino
CONFIGURE_STYLE=	imake	

NO_TEST=	Yes

post-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/xdino ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/Dino.ad ${PREFIX}/lib/X11/app-defaults/Dino
	@${INSTALL_MAN} ${WRKSRC}/xdino.man ${PREFIX}/man/man1/xdino.1

.include <bsd.port.mk>
