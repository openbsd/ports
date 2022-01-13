# $OpenBSD: Makefile,v 1.4 2022/01/13 08:07:52 ajacoutot Exp $

COMMENT =	mahjongg game for GNOME

GNOME_PROJECT =	gnome-mahjongg
GNOME_VERSION =	3.38.3
REVISION =	1

CATEGORIES =	games

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	devel/dconf \
		devel/meson \
		x11/gnome

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl rsvg-2

BUILD_DEPENDS =		devel/gsettings-desktop-schemas
RUN_DEPENDS =		devel/gsettings-desktop-schemas
LIB_DEPENDS =		x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

CONFIGURE_ARGS =	-Dcompile-schemas=disabled \
			-Dupdate-icon-cache=disabled

.include <bsd.port.mk>
