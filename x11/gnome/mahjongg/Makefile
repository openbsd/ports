COMMENT =		mahjongg game for GNOME

GNOME_PROJECT =		gnome-mahjongg
GNOME_VERSION =		48.1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 intl

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS =		devel/appstream \
			devel/gsettings-desktop-schemas

RUN_DEPENDS =		devel/gsettings-desktop-schemas

LIB_DEPENDS =		x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
