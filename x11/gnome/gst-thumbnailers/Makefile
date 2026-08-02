COMMENT=		GStreamer thumnailers

GNOME_PROJECT=		gst-thumbnailers
GNOME_VERSION=		1.0.0

CATEGORIES=		graphics

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODCARGO_WANTLIB} gio-2.0 glib-2.0 glycin-2 gobject-2.0
WANTLIB += gstapp-1.0 gstbase-1.0 gstreamer-1.0 gstvideo-1.0 m

MODULES=		devel/cargo \
			devel/meson \
			x11/gnome

MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

MAKE_ENV +=		${MODCARGO_ENV}
MAKE_FLAGS +=		V=1

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			x11/gnome/glycin

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	@${MODCARGO_configure}

.include "crates.inc"

.include <bsd.port.mk>
