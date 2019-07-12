# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:27 sthen Exp $

COMMENT=	blockout style game for X11

V=		2.4
DISTNAME=	xboing${V}
PKGNAME=	xboing-${V}
REVISION=	4

CATEGORIES=	games

HOMEPAGE=	http://www.techrescue.org/xboing/

# X Consortium
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xpm c m sndio

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=games/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/xboing

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xboing
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xboing/xboing.score

.include <bsd.port.mk>
