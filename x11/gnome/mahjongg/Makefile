COMMENT =		mahjongg game for GNOME

GNOME_PROJECT =		gnome-mahjongg
GNOME_VERSION =		47.0
REVISION =		1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo gio-2.0 glib-2.0 gobject-2.0 gtk-4
WANTLIB += intl rsvg-2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS =		devel/gsettings-desktop-schemas

RUN_DEPENDS =		devel/gsettings-desktop-schemas

LIB_DEPENDS =		x11/gnome/librsvg \
			x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
