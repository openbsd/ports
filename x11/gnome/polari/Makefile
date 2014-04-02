# $OpenBSD: Makefile,v 1.1.1.1 2014/04/02 15:30:12 jasper Exp $

COMMENT =		IRC Client for GNOME

GNOME_PROJECT = 	polari
GNOME_VERSION = 	3.12.0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection desktop-file-utils
MODNGOME_TOOLS +=	gtk-update-icon-cache

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs telepathy-glib xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS =		net/telepathy/telepathy-glib \
			x11/gtk+3
BUILD_DEPENDS = 	x11/gnome/gjs
RUN_DEPENDS =		net/telepathy/telepathy-idle \
			net/telepathy/telepathy-logger

.include <bsd.port.mk>
