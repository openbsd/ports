# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 17:37:27 espie Exp $

COMMENT-main=		"multimedia framework - plugins base"

V=			0.10.11
DISTNAME=		gst-plugins-base-$V
PKGNAME-main=		gstreamer-plugins-base-$V
MULTI_PACKAGES=		-main

SHARED_LIBS +=	gstinterfaces-0.10    0.0     # .8.0
SHARED_LIBS +=	gsttag-0.10           0.0     # .8.0
SHARED_LIBS +=	gstaudio-0.10         0.0     # .8.0
SHARED_LIBS +=	gstcdda-0.10          0.0     # .8.0
SHARED_LIBS +=	gstnetbuffer-0.10     0.0     # .8.0
SHARED_LIBS +=	gstriff-0.10          0.0     # .8.0
SHARED_LIBS +=	gstrtp-0.10           0.0     # .8.0
SHARED_LIBS +=	gstvideo-0.10         0.0     # .8.0

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}

WANTLIB=		freetype crypto Xv m X11 ICE SM Xext fontconfig ssl z \
			ORBitCosNaming-2 gthread-2.0 bonobo-activation \
			bonobo-2 gobject-2.0 gconf-2 gmodule-2.0 popt \
			pango-1.0 pangoft2-1.0 xml2 ORBit-2 ogg \
			glib-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		oil-0.3::devel/liboil \
			gstreamer-0.10,gstbase-0.10,gstdataprotocol-0.10,gstcontroller-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \
			gnomevfs-2::x11/gnome/vfs2 \
			theora::multimedia/libtheora \
			vorbis,vorbisenc::audio/libvorbis
			
CONFIGURE_ARGS+=	--disable-libvisual \
			--disable-alsa \
			--disable-cdparanoia \
			--disable-gst_v4l

.include <bsd.port.mk>
