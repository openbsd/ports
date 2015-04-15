# $OpenBSD: Makefile,v 1.2 2015/04/15 09:40:54 ajacoutot Exp $

COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		3.16.1
REVISION =		0

# BSD3/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs unistring xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS =		converters/libunistring \
			x11/gtk+3
BUILD_DEPENDS =		x11/gnome/gjs
RUN_DEPENDS =		x11/gnome/gjs

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# Requires unported 'dogtail'
NO_TEST =		Yes

.include <bsd.port.mk>
