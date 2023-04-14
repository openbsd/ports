COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		1.6.0

SHARED_LIBS +=	gupnp-igd-1.6             0.0 # 0.0

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gssdp-1.6 gupnp-1.6

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/gupnp/core>=1.2.0

.include <bsd.port.mk>
