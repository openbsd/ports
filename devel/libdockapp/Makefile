COMMENT=		dockapp-making standard library for Window Maker

DISTNAME=		libdockapp-0.7.3
SHARED_LIBS=		dockapp              2.0      # .1.0
CATEGORIES=		devel

HOMEPAGE=		https://www.dockapps.net/libdockapp/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm xcb

MASTER_SITES=		https://www.dockapps.net/download/

NO_TEST=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static \
			--with-fontdir=${PREFIX}/share/fonts/libdockapps

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
