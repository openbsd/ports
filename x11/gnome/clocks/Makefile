COMMENT=		keep track of time

GNOME_PROJECT=		gnome-clocks
GNOME_VERSION=		46.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c geoclue-2 geocode-glib-2 gio-2.0 glib-2.0
WANTLIB += gnome-desktop-4 gobject-2.0 gtk-4 gweather-4 intl m

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		geo/geocode-glib \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/libgweather4 \
			x11/gnome/libadwaita

# geocoding.vala
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

# Use xdg-desktop-portal to get system clock format
RUN_DEPENDS +=		sysutils/flatpak/xdg-desktop-portal

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
