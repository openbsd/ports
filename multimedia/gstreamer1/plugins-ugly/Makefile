# $OpenBSD: Makefile,v 1.20 2014/04/19 17:47:58 ajacoutot Exp $

COMMENT=		ugly elements for GStreamer

DISTNAME=		gst-plugins-ugly-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-ugly-${V}

PERMIT_PACKAGE_CDROM=	Patent issues

WANTLIB += dvdcss dvdread ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 m mad mp3lame orc-0.4 pcre pthread twolame
WANTLIB += x264 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/lame \
			audio/libmad \
			devel/libdvdread \
			multimedia/x264 \
			audio/twolame

CONFIGURE_ARGS=		--disable-a52dec \
			--disable-amrnb \
			--disable-amrwb \
			--disable-cdio \
			--disable-mpeg2dec \
			--disable-sidplay

pre-configure:
	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/dvdread/dvdreadsrc.c

.include <bsd.port.mk>
