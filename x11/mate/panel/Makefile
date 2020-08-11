# $OpenBSD: Makefile,v 1.23 2020/08/11 09:50:19 robert Exp $

COMMENT=		panel component for MATE

SHARED_LIBS +=  mate-panel-applet-4       1.1 # 1.1

MATE_PROJECT=		mate-panel
MATE_VERSION=		1.24.1

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject dconf epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-3
WANTLIB += harfbuzz iconv idn2 intl lzma m mate-desktop-2 mate-menu
WANTLIB += mateweather pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread rsvg-2 soup-2.4 startup-notification-1
WANTLIB += unistring wnck-3 xcb xcb-render xcb-shm xcb-util xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libwnck3 \
			devel/startup-notification \
			x11/mate/desktop \
			x11/mate/libmateweather \
			x11/mate/menus

RUN_DEPENDS=		x11/mate/settings-daemon \
			x11/mate/screensaver

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
