# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:14 sthen Exp $

COMMENT=		Joe's Window Manager#'

DISTNAME=		jwm-2.3.7

CATEGORIES=		x11

HOMEPAGE=		http://www.joewing.net/projects/jwm/index.shtml

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xft Xinerama Xmu Xpm Xrender c cairo freetype
WANTLIB += fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl jpeg m png rsvg-2 z

MASTER_SITES=		http://www.joewing.net/projects/jwm/releases/
EXTRACT_SUFX=		.tar.xz

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/fribidi \
			devel/glib2 \
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
