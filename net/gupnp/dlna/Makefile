COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.12.0

SHARED_LIBS +=	gupnp-dlna-2.0            0.0 # 3.0
SHARED_LIBS +=	gupnp-dlna-gst-2.0        0.0 # 3.0

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS += gobject-introspection vala

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base
RUN_DEPENDS=		net/gupnp/core

# support for various media files
RUN_DEPENDS+=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav

# Needs media files which aren't distributed with the tarball.
NO_TEST=		Yes

.include <bsd.port.mk>
