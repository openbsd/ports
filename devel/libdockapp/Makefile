# $OpenBSD: Makefile,v 1.25 2019/07/12 20:44:37 sthen Exp $

COMMENT=		dockapp-making standard library for Window Maker

DISTNAME=		libdockapp-0.4.0
REVISION=		5
SHARED_LIBS=		dockapp              1.0      # .1.0
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xpm xcb

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

NO_TEST=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
