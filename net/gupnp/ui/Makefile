# $OpenBSD: Makefile,v 1.10 2013/06/21 22:38:12 sthen Exp $

COMMENT=		collection of GTK+ widgets on top of GUPnp

GNOME_PROJECT=		gupnp-ui
GNOME_VERSION=		0.1.1
REVISION=		4

SHARED_LIBS +=  gupnp-ui-1.0         0.0      # 0.0

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo uuid expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gupnp-1.0
WANTLIB += gobject-2.0 graphite2 gssdp-1.0 gthread-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z gdk-x11-2.0 gtk-x11-2.0

LIB_DEPENDS=		net/gupnp/core \
			x11/gtk+2

TEST_IS_INTERACTIVE=	x11

do-test:
	${WRKSRC}/tests/test-view

.include <bsd.port.mk>
