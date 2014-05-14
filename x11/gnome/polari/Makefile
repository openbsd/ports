# $OpenBSD: Makefile,v 1.4 2014/05/14 09:17:32 jasper Exp $

COMMENT =		IRC Client for GNOME

GNOME_PROJECT = 	polari
GNOME_VERSION = 	3.12.2

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs telepathy-glib
WANTLIB += xcb xcb-render xcb-shm z

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection desktop-file-utils
MODGNOME_TOOLS +=	gtk-update-icon-cache

LIB_DEPENDS =		devel/gobject-introspection \
			net/telepathy/telepathy-glib \
			x11/gtk+3

BUILD_DEPENDS = 	x11/gnome/gjs

RUN_DEPENDS =		x11/gnome/gjs \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-logger

# share/polari/js/utils.js
RUN_DEPENDS +=		devel/libsoup

post-install:
	rm ${PREFIX}/lib/polari/libpolari-1.0.{a,la}

.include <bsd.port.mk>
