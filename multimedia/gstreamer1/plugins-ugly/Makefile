COMMENT=		ugly elements for GStreamer

DISTNAME=		gst-plugins-ugly-${V}

WANTLIB += cdio dvdread glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gstriff-1.0
WANTLIB += gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += intl x264

SITES=			${SITE_GST:=gst-plugins-ugly/}

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base=${V} \
			audio/libcdio \
			devel/libdvdread \
			multimedia/x264

CONFIGURE_ARGS=		-Dgpl=enabled \
			-Da52dec=disabled \
			-Dmpeg2dec=disabled \
			-Dsidplay=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
