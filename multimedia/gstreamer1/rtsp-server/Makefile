COMMENT=		RTSP server library based on GStreamer

DISTNAME=		gst-rtsp-server-${V}

SHARED_LIBS += gstrtspserver-1.0         0.0 # 0.2411.0

SITES=			${SITE_GST:=gst-rtsp-server/}

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0 gstbase-1.0
WANTLIB += gstnet-1.0 gstreamer-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0
WANTLIB += gstvideo-1.0

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base=${V}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
