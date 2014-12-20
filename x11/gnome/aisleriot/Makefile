# $OpenBSD: Makefile,v 1.1.1.1 2014/12/20 14:44:25 landry Exp $

COMMENT =		suite of solitaire card games

GNOME_PROJECT =		aisleriot
GNOME_VERSION =		3.14.2

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread rsvg-2 z
WANTLIB += ICE SM Xcursor Xinerama Xrender atk-bridge-2.0 atspi
WANTLIB += croco-0.6 dbus-1 expat ffi gc gmp graphite2 gthread-2.0
WANTLIB += guile-2.0 harfbuzz ltdl lzma ogg pcre pixman-1 png
WANTLIB += pthread-stubs unistring vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-shm xml2


MODULES =		devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			lang/guile2

# https://bugzilla.gnome.org/show_bug.cgi?id=726780
BUILD_DEPENDS =		shells/bash

CONFIGURE_ARGS =	--with-card-theme-formats=svg

CONFIGURE_ENV=		APPDATA_VALIDATE="/usr/bin/true" \
			CONFIG_SHELL="${LOCALBASE}/bin/bash" \
			GUILE="${LOCALBASE}/bin/guile2"

.include <bsd.port.mk>
