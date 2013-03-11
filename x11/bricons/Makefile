# $OpenBSD: Makefile,v 1.28 2013/03/11 11:46:08 espie Exp $

COMMENT=	quick start-up utility for applications on an X11 display

PKGNAME=	bricons-3.0
REVISION=	3
DISTNAME=	bricons-athena-3.0
CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}

CONFIGURE_STYLE= imake
WRKDIST=	${WRKDIR}/bricons
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/Xbricons ${PREFIX}/lib/X11/app-defaults
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/bitmaps
	${INSTALL_DATA} ${WRKSRC}/bitmaps/*.xbm ${PREFIX}/include/X11/bitmaps
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps
	${INSTALL_DATA} ${WRKSRC}/*.xpm ${PREFIX}/include/X11/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bricons
	${INSTALL_DATA} ${FILESDIR}/DOTbriconsrc \
		${PREFIX}/share/examples/bricons/dot.briconsrc

.include <bsd.port.mk>
