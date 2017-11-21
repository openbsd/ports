# $OpenBSD: Makefile,v 1.15 2017/11/21 00:13:02 naddy Exp $

COMMENT=		collection of GTK+ widgets on top of GUPnp

GNOME_PROJECT=		gupnp-ui
GNOME_VERSION=		0.1.1
REVISION=		9

SHARED_LIBS +=  gupnp-ui-1.0         0.0      # 0.0

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gssdp-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB += gupnp-1.0 harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread soup-2.4 sqlite3 xcb
WANTLIB += xcb-render xcb-shm xml2 z

LIB_DEPENDS=		net/gupnp/core \
			x11/gtk+2

TEST_IS_INTERACTIVE=	x11

do-test:
	${WRKSRC}/tests/test-view

.include <bsd.port.mk>
