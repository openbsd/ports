# $OpenBSD: Makefile,v 1.11 2017/10/23 17:11:03 sthen Exp $

COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		3.24.0
REVISION =		0

# BSD3/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread unistring xcb xcb-render
WANTLIB += xcb-shm z iconv intl

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		converters/libunistring \
			x11/gtk+3
BUILD_DEPENDS =		x11/gnome/gjs
RUN_DEPENDS =		x11/gnome/gjs

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE =	gnu

# Requires unported 'dogtail'
NO_TEST =		Yes

.include <bsd.port.mk>
