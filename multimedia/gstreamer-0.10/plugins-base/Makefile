# $OpenBSD: Makefile,v 1.15 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT-main =		multimedia framework - plugins base
COMMENT-gnome =		multimedia framework - gnome vfs plugin
COMMENT-cdda =		multimedia framework - cd paranoia plugin
COMMENT-ogg =		multimedia framework - ogg plugin
COMMENT-vorbis =	multimedia framework - vorbis plugin
COMMENT-theora =	multimedia framework - theora plugin
COMMENT-pango =		multimedia framework - pango renderer

V =			0.10.19
DISTNAME =		gst-plugins-base-$V
PKGNAME-main =		gstreamer-plugins-base-$Vp1
PKGNAME-gnome =		gstreamer-gnome-$Vp3
PKGNAME-cdda =		gstreamer-cdda-$Vp2
PKGNAME-ogg =		gstreamer-ogg-$Vp2
PKGNAME-theora =	gstreamer-theora-$Vp2
PKGNAME-vorbis =	gstreamer-vorbis-$Vp2
PKGNAME-pango =		gstreamer-pango-$Vp2
MULTI_PACKAGES =	-main -gnome -cdda -ogg -theora -vorbis -pango

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
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core \

WANTLIB-main =		${WANTLIB} \
			Xv X11 ICE SM Xext Xau Xdmcp \
			gstdataprotocol-0.10 gstcontroller-0.10 gstbase-0.10
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			oil-0.3::devel/liboil
RUN_DEPENDS-main =	
			
WANTLIB-gnome =		${WANTLIB} \
			ORBit-2 crypto gconf-2 ssl \
			gstbase-0.10 util dbus-1 dbus-glib-1
LIB_DEPENDS-gnome = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			gnomevfs-2:gnome-vfs2->=2.20.1p8:x11/gnome/vfs2

WANTLIB-cdda =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-cdda = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			cdda_interface,cdda_paranoia::audio/cdparanoia

WANTLIB-ogg =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-ogg = 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstriff-0.10,gsttag-0.10::${BUILD_PKGPATH} \
			ogg::audio/libogg

WANTLIB-theora =	${WANTLIB} \
			ogg gstbase-0.10
LIB_DEPENDS-theora = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			theora::multimedia/libtheora

WANTLIB-vorbis =	${WANTLIB} \
			ogg gstbase-0.10
LIB_DEPENDS-vorbis = 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gsttag-0.10::${BUILD_PKGPATH} \
			vorbis,vorbisenc::audio/libvorbis

WANTLIB-pango =		${WANTLIB} \
			X11 Xau Xdmcp expat fontconfig freetype \
			gstbase-0.10
LIB_DEPENDS-pango =	${LIB_DEPENDS} \
			pango-1.0,pangoft2-1.0::devel/pango

CONFIGURE_ARGS +=	--disable-libvisual \
			--disable-alsa \
			--disable-gst_v4l

.include <bsd.port.mk>
