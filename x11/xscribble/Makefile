COMMENT=	stylus character recognition tool for X11

DISTNAME=	xscribble
PKGNAME=	xscribble-20000616
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://www.handhelds.org/projects/xscribble.html

EXTRACT_SUFX=	.tgz

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext ICE Xt Xtst Xmu c m SM Xpm Xaw

SITES=		http://www.handhelds.org/download/projects/xscribble/


NO_TEST=	Yes

CONFIGURE_STYLE= imake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscribble
	${INSTALL_DATA} ${WRKSRC}/classifiers/*.cl \
		${PREFIX}/share/examples/xscribble

.include <bsd.port.mk>
