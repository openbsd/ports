# $OpenBSD: Makefile,v 1.9 2013/01/08 13:49:15 ajacoutot Exp $

COMMENT=		ugly elements for GStreamer

V=			1.0.5
DISTNAME=		gst-plugins-ugly-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-ugly-${V}

PERMIT_PACKAGE_CDROM=	Patent issues
PERMIT_DISTFILES_CDROM=	Patent issues

WANTLIB += a52 dvdread ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 m mad mp3lame orc-0.4 pcre
WANTLIB += pthread twolame x264 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

LIB_DEPENDS=		${P}/plugins-base \
			audio/lame \
			audio/liba52 \
			audio/libmad \
			devel/libdvdread \
			multimedia/x264 \
			audio/twolame

CONFIGURE_ARGS=		--disable-amrnb \
			--disable-amrwb \
			--disable-cdio \
			--disable-mpeg2dec \
			--disable-sidplay

pre-configure:
	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/dvdread/dvdreadsrc.c

.include <bsd.port.mk>
