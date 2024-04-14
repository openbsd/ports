COMMENT =		GNOME utility to insert unusual characters

GNOME_PROJECT =		gnome-characters
GNOME_VERSION =		46.0

# BSD3/GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		devel/glib2

BUILD_DEPENDS =		x11/gnome/gjs \
			x11/gnome/libadwaita

RUN_DEPENDS =		x11/gnome/desktop,-gtk4 \
			x11/gnome/gjs \
			x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

# Requires unported 'dogtail'
NO_TEST =		Yes

.include <bsd.port.mk>
