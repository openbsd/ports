# $OpenBSD: Makefile,v 1.22 2020/04/13 18:40:25 kmos Exp $

COMMENT=		MATE control center

SHARED_LIBS +=  mate-slab                 0.0 # 0.0
SHARED_LIBS +=  mate-window-settings      1.0 # 1.0

MATE_PROJECT=		mate-control-center

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xss atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 dbus-1
WANTLIB += dbus-glib-1 dconf epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl ltdl lzma m
WANTLIB += marco-private mate-desktop-2 mate-menu matekbd matekbdui ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread rsvg-2 startup-notification-1 vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm xcb-util xkbfile xklavier xml2 z
WANTLIB += accountsservice polkit-gobject-1

MODULES=		x11/gnome

LIB_DEPENDS=		devel/startup-notification \
			sysutils/accountsservice \
			x11/mate/marco \
			x11/mate/menus \
			x11/mate/libmatekbd

BUILD_DEPENDS=		x11/mate/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/mate/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/mate-control-center

CONFIGURE_STYLE=	gnu

CFLAGS +=		-std=gnu99

.include <bsd.port.mk>
