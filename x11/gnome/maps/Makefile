COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		43.1
REVISION=		1

SHARED_LIBS +=  gnome-maps                0.0 # 0.0.0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 rest-1.0 shumate-1.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/librest1 \
			x11/gnome/libshumate

BUILD_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs \
			x11/gnome/libgweather4 \
			x11/libhandy

RUN_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs \
			x11/gnome/libgweather4 \
			x11/gnome/online-accounts \
			x11/libhandy

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
