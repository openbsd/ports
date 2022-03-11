COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		1.2.0

SHARED_LIBS +=  gupnp-igd-1.0        1.0      # 4.0

MODULES=		devel/meson \
			x11/gnome

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gssdp-1.2 gupnp-1.2

MODGNOME_TOOLS +=	gobject-introspection

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/gupnp/core>=1.2.0

.include <bsd.port.mk>
