# $OpenBSD: Makefile,v 1.6 2017/07/13 08:44:47 robert Exp $

COMMENT=		MATE control center

SHARED_LIBS +=  mate-slab                 0.0 # 0.0
SHARED_LIBS +=  mate-window-settings      1.0 # 1.0

MATE_PROJECT=		mate-control-center
MATE_VERSION=		1.18.2

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xss atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += croco-0.6 dbus-1 dbus-glib-1 dconf epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl ltdl lzma m mate-desktop-2 matekbd
WANTLIB += matekbdui ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm xcb-util xkbfile
WANTLIB += xklavier xml2 z marco-private mate-menu startup-notification-1
WANTLIB += Xau kvm

MODULES=		x11/gnome

LIB_DEPENDS=		devel/startup-notification \
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

.include <bsd.port.mk>
