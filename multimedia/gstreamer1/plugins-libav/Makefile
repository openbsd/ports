# $OpenBSD: Makefile,v 1.43 2019/08/24 08:44:06 ajacoutot Exp $

COMMENT=		ffmpeg elements for GStreamer

DISTNAME=		gst-libav-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-libav-${V}
REVISION=		0

WANTLIB += avcodec avfilter avformat avutil glib-2.0 gobject-2.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 intl

MASTER_SITES=		${MASTER_SITE_GST:=gst-libav/}

LIB_DEPENDS=		${P}/plugins-base=${V} \
			graphics/ffmpeg

.include <bsd.port.mk>
