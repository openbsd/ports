# $OpenBSD: Makefile,v 1.11 2018/12/22 11:33:47 robert Exp $

COMMENT=		MATE notification daemon

MATE_PROJECT=		mate-notification-daemon
MATE_VERSION=		1.20.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender c epoxy expat
WANTLIB += ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl m pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += xcb-util z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo canberra-gtk3
WANTLIB += canberra dbus-1 dbus-glib-1 gdk-3 graphite2 gtk-3 harfbuzz ltdl
WANTLIB += notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += startup-notification-1 vorbis vorbisfile wnck-3
WANTLIB += fribidi

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			devel/libwnck3 \
			devel/startup-notification \
			x11/dbus-glib

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
