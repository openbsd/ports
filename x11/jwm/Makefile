COMMENT=		Joe's Window Manager

V=			2.4.6
DISTNAME=		jwm-${V}

CATEGORIES=		x11

HOMEPAGE=		https://www.joewing.net/projects/jwm/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xft Xinerama Xmu Xpm Xrender c cairo cairo-gobject
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 harfbuzz iconv intl jpeg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 png pthread
WANTLIB += rsvg-2 xml2

SITES=			https://github.com/joewing/jwm/releases/download/v${V}/
EXTRACT_SUFX=		.tar.xz
DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/glib2 \
			x11/gnome/librsvg

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/jwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jwm
	${INSTALL_DATA} ${WRKSRC}/example.jwmrc \
		${PREFIX}/share/examples/jwm/system.jwmrc

.include <bsd.port.mk>
