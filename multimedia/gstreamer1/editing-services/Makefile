COMMENT=		library for creating audio and video editors

DISTNAME=		gst-editing-services-${V}
REVISION=		0

SHARED_LIBS += ges-1.0                   0.1 # 0.2607.0

SITES=			${SITE_GST:=gst-editing-services/}

# XXX we need the meson MODULE to come first, but Makefile.inc is parsed after
MODULES=		devel/meson lang/python

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstcontroller-1.0 gstpbutils-1.0 gstreamer-1.0 gstvalidate-1.0
WANTLIB += gstvideo-1.0 m ${MODPY_WANTLIB} xml2

BUILD_DEPENDS=		devel/gobject-introspection \
			shells/bash-completion

LIB_DEPENDS=		multimedia/gstreamer1/devtools=${V}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
