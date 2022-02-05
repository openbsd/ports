# $OpenBSD: Makefile,v 1.42 2022/02/05 14:49:41 ajacoutot Exp $

COMMENT=		ugly elements for GStreamer

DISTNAME=		gst-plugins-ugly-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-ugly-${V}

WANTLIB += cdio dvdread glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gstriff-1.0
WANTLIB += gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += intl x264

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/libcdio \
			devel/libdvdread \
			multimedia/x264

CONFIGURE_ARGS=		-Dgpl=enabled \
			-Da52dec=disabled \
			-Damrnb=disabled \
			-Damrwbdec=disabled \
			-Dmpeg2dec=disabled \
			-Dsidplay=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
