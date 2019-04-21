# $OpenBSD: Makefile,v 1.35 2019/04/21 08:50:10 ajacoutot Exp $

COMMENT=		ugly elements for GStreamer

DISTNAME=		gst-plugins-ugly-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-ugly-${V}

PERMIT_PACKAGE_CDROM=	patents

WANTLIB += a52 cdio dvdread gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 iconv intl m mpeg2 orc-0.4 pthread x264

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/liba52 \
			audio/libcdio \
			devel/libdvdread \
			graphics/libmpeg2 \
			multimedia/x264

CONFIGURE_ARGS=		-Damrnb=disabled \
			-Damrwbdec=disabled \
			-Dsidplay=disabled

pre-configure:
	sed -i 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/dvdread/dvdreadsrc.c

.include <bsd.port.mk>
