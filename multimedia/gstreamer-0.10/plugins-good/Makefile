# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 17:37:27 espie Exp $

COMMENT-main=		"multimedia framework - plugins good"

V=			0.10.5
DISTNAME=		gst-plugins-good-$V
PKGNAME-main=		gstreamer-plugins-good-$V

MULTI_PACKAGES=		-main
SHARED_LIBS=

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

WANTLIB=		m z popt ICE SM X11 Xdamage Xext Xfixes glib-2.0 \
			gmodule-2.0 gobject-2.0 gthread-2.0 ossaudio \
			ORBit-2 gconf-2

MODULES=		devel/gettext

LIB_DEPENDS=		oil-0.3::devel/liboil \
			audiofile::devel/libaudiofile \
			esd::audio/esound \
			FLAC::audio/flac \
			speex::audio/speex \
			dv::multimedia/libdv \
			xml2::textproc/libxml \
			jpeg::graphics/jpeg \
			png::graphics/png \
			gstreamer-0.10,gstbase-0.10,gstcontroller-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \
			gstaudio-0.10,gstinterfaces-0.10,gstnetbuffer-0.10,gstriff-0.10,gstrtp-0.10,gsttag-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base


CONFIGURE_ARGS+=	--disable-aalib \
			--disable-cairo \
			--disable-cdio \
			--disable-dv1394 \
			--disable-ladspa \
			--disable-libcaca \
			--disable-shout2 \
			--disable-sunaudio \
			--disable-gdk_pixbuf \
			--disable-taglib

.include <bsd.port.mk>
