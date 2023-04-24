COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		44.0
REVISION=		0

CATEGORIES=		graphics

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 babl-0.1 c cairo cairo-gobject dazzle-1.0 gdk-3
WANTLIB += gdk_pixbuf-2.0 gegl-0.4 geocode-glib-2 gexiv2 gio-2.0
WANTLIB += glib-2.0 goa-1.0 gobject-2.0 gtk-3 handy-1 intl jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 png portal portal-gtk3 tracker-sparql-3.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		geo/geocode-glib,soup3 \
			graphics/gegl04 \
			graphics/libgexiv2 \
			sysutils/libportal,-gtk3 \
			x11/gnome/libdazzle \
			x11/gnome/online-accounts \
			x11/gnome/tracker3 \
			x11/libhandy

# org.gnome.OnlineMiners.MediaServer
RUN_DEPENDS += x11/gnome/tracker3-miners

# com.intel.dleyna-renderer
RUN_DEPENDS +=		net/dleyna

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
