# $OpenBSD: Makefile,v 1.38 2019/07/12 20:47:24 sthen Exp $

COMMENT=	biff-type program, designed to match AfterStep

DISTNAME=	asmail-0.56
REVISION =	5
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=asmail/}

HOMEPAGE=	http://asmail.sourceforge.net/

LIB_DEPENDS=	graphics/jpeg

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xext Xpm Xt c jpeg>=62

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-shaping
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/sample.asmailrc

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps/cloud-e
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asmail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asmail
	${INSTALL_MAN} ${WRKSRC}/asmail.man.src ${PREFIX}/man/man1/asmail.1
	${INSTALL_DATA} ${WRKSRC}/pixmaps/cloud-e/*.xpm ${PREFIX}/include/X11/pixmaps/cloud-e
	${INSTALL_DATA} ${WRKSRC}/pixmaps/*.xpm ${PREFIX}/include/X11/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sample.asmailrc ${PREFIX}/share/examples/asmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/asmail

.include <bsd.port.mk>
