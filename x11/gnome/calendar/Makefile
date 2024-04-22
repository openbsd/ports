COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		46.1

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c ecal-2.0 edataserver-1.2 edataserverui4-1.0
WANTLIB += geoclue-2 gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 gweather-4 ical-glib intl m pango-1.0 soup-3.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server \
			x11/gnome/libgweather4 \
			x11/gnome/libadwaita

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
