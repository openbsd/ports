# $OpenBSD: Makefile,v 1.39 2019/09/25 22:48:02 ajacoutot Exp $

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

CONFIGURE_ARGS=		-Da52dec=disabled \
			-Damrnb=disabled \
			-Damrwbdec=disabled \
			-Dmpeg2dec=disabled \
			-Dsidplay=disabled

pre-configure:
	sed -i 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/dvdread/dvdreadsrc.c

.include <bsd.port.mk>
