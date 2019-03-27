# $OpenBSD: Makefile,v 1.15 2019/03/27 18:13:38 robert Exp $

COMMENT=		panel component for MATE

SHARED_LIBS +=  mate-panel-applet-4       1.1 # 1.1

MATE_PROJECT=		mate-panel

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender c dconf epoxy
WANTLIB += expat ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl m pcre pixman-1
WANTLIB += pthread xcb xcb-render xcb-shm
WANTLIB += xcb-util z fribidi
WANTLIB += atk-1.0 atk-bridge-2.0 cairo-gobject
WANTLIB += cairo croco-0.6 gdk-3
WANTLIB += gdk_pixbuf-2.0 graphite2 gtk-3 harfbuzz
WANTLIB += lzma mate-menu mateweather pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png16 rsvg-2 soup-2.4
WANTLIB += startup-notification-1 wnck-3 xml2 mate-desktop-2
WANTLIB += idn2 unistring

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libwnck3 \
			x11/mate/desktop \
			x11/mate/libmateweather \
			x11/mate/menus

RUN_DEPENDS=		x11/mate/settings-daemon \
			x11/mate/screensaver

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
