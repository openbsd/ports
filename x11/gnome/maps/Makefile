COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		45.5

SHARED_LIBS +=  gnome-maps                0.0 # 0.0.0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 shumate-1.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/libshumate

BUILD_DEPENDS=		geo/geoclue2 \
			geo/geocode-glib \
			sysutils/flatpak/libportal \
			x11/gnome/gjs \
			x11/gnome/libadwaita \
			x11/gnome/libgweather4 \
			x11/gnome/librest1

RUN_DEPENDS=		geo/geoclue2 \
			geo/geocode-glib \
			sysutils/flatpak/libportal \
			x11/gnome/gjs \
			x11/gnome/libadwaita \
			x11/gnome/libgweather4 \
			x11/gnome/librest1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
