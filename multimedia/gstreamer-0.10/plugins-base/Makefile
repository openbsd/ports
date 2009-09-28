# $OpenBSD: Makefile,v 1.19 2009/09/28 19:52:14 ajacoutot Exp $

COMMENT-main =		multimedia framework - plugins base
COMMENT-gnome =		multimedia framework - gnome vfs plugin
COMMENT-cdda =		multimedia framework - cd paranoia plugin

V =			0.10.19
DISTNAME =		gst-plugins-base-$V

PKGNAME-main =		gstreamer-plugins-base-$Vp4
PKGNAME-gnome =		gstreamer-gnome-$Vp5
PKGNAME-cdda =		gstreamer-cdda-$Vp3

MULTI_PACKAGES =	-main -gnome -cdda

SHARED_LIBS +=	gstinterfaces-0.10   0.2      # .8.0
SHARED_LIBS +=	gsttag-0.10          0.2      # .8.0
SHARED_LIBS +=	gstaudio-0.10        0.2      # .8.0
SHARED_LIBS +=	gstcdda-0.10         0.2      # .8.0
SHARED_LIBS +=	gstnetbuffer-0.10    0.2      # .8.0
SHARED_LIBS +=	gstpbutils-0.10      0.1      # .8.0
SHARED_LIBS +=	gstriff-0.10         0.2      # .8.0
SHARED_LIBS +=	gstrtp-0.10          0.2      # .8.0
SHARED_LIBS +=	gstvideo-0.10        0.2      # .8.0
SHARED_LIBS +=	gstfft-0.10          0.0      # .13.0
SHARED_LIBS +=	gstrtsp-0.10         0.0      # .13.0
SHARED_LIBS +=	gstsdp-0.10          0.0      # .13.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-base/}
MODULES =		devel/gettext

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core

WANTLIB-main =		${WANTLIB} \
			Xv X11 ICE SM Xext Xau Xdmcp \
			gstdataprotocol-0.10 gstcontroller-0.10 gstbase-0.10 \
			pthread-stubs xcb expat fontconfig freetype ogg
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			vorbis.>=7,vorbisenc::audio/libvorbis \
			pango-1.0.>=1801,pangoft2-1.0::devel/pango \
			theora.>=3::multimedia/libtheora
RUN_DEPENDS-main =	
			
WANTLIB-gnome =		${WANTLIB} \
			ORBit-2 avahi-client avahi-common avahi-glib \
			crypto gconf-2 ssl \
			gstbase-0.10 util dbus-1 dbus-glib-1
LIB_DEPENDS-gnome = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			gnomevfs-2:gnome-vfs2->=2.20.1p8:x11/gnome/vfs2

WANTLIB-cdda =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-cdda = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			cdda_interface,cdda_paranoia::audio/cdparanoia

CONFIGURE_ARGS +=	--disable-libvisual \
			--disable-alsa \
			--disable-gst_v4l

.include <bsd.port.mk>
