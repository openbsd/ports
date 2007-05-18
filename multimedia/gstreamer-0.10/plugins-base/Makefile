# $OpenBSD: Makefile,v 1.7 2007/05/18 21:44:54 jasper Exp $

COMMENT-main=		"multimedia framework - plugins base"
COMMENT-gnome=		"multimedia framework - gnome vfs plugin"
COMMENT-cdda=		"multimedia framework - cd paranoia plugin"
COMMENT-ogg=		"multimedia framework - ogg plugin"
COMMENT-vorbis=		"multimedia framework - vorbis plugin"
COMMENT-theora=		"multimedia framework - theora plugin"
COMMENT-pango=		"multimedia framework - pango renderer"

V=			0.10.12
DISTNAME=		gst-plugins-base-$V
PKGNAME-main=		gstreamer-plugins-base-$V
PKGNAME-gnome=		gstreamer-gnome-$Vp0
PKGNAME-cdda=		gstreamer-cdda-$V
PKGNAME-ogg=		gstreamer-ogg-$V
PKGNAME-theora=		gstreamer-theora-$V
PKGNAME-vorbis=		gstreamer-vorbis-$V
PKGNAME-pango=		gstreamer-pango-$V
MULTI_PACKAGES=		-main -gnome -cdda -ogg -theora -vorbis -pango

SHARED_LIBS +=	gstinterfaces-0.10   0.1      # .8.0
SHARED_LIBS +=	gsttag-0.10          0.1      # .8.0
SHARED_LIBS +=	gstaudio-0.10        0.1      # .8.0
SHARED_LIBS +=	gstcdda-0.10         0.1      # .8.0
SHARED_LIBS +=	gstnetbuffer-0.10    0.1      # .8.0
SHARED_LIBS +=	gstpbutils-0.10      0.0      # .8.0
SHARED_LIBS +=	gstriff-0.10         0.1      # .8.0
SHARED_LIBS +=	gstrtp-0.10          0.1      # .8.0
SHARED_LIBS +=	gstvideo-0.10        0.1      # .8.0

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-base/}
MODULES=		devel/gettext

RUN_DEPENDS=		::${BUILD_PKGPATH}
WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m
LIB_DEPENDS=		gstreamer-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \

WANTLIB-main=		${WANTLIB} \
			Xv X11 ICE SM Xext \
			gstdataprotocol-0.10 gstcontroller-0.10 gstbase-0.10
LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			oil-0.3::devel/liboil
RUN_DEPENDS-main=	
			
WANTLIB-gnome=		${WANTLIB} \
			ORBit-2 ORBitCosNaming-2 crypto gconf-2 ssl \
			gstbase-0.10
LIB_DEPENDS-gnome= 	${LIB_DEPENDS} \
			popt::devel/popt \
			bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gnomevfs-2::x11/gnome/vfs2

WANTLIB-cdda=		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-cdda= 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			cdda_interface,cdda_paranoia::audio/cdparanoia

WANTLIB-ogg=		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-ogg= 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstriff-0.10,gsttag-0.10::${BUILD_PKGPATH} \
			ogg::audio/libogg

WANTLIB-theora=		${WANTLIB} \
			ogg
LIB_DEPENDS-theora= 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			theora::multimedia/libtheora

WANTLIB-vorbis=		${WANTLIB} \
			ogg gstbase-0.10
LIB_DEPENDS-vorbis= 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gsttag-0.10::${BUILD_PKGPATH} \
			vorbis,vorbisenc::audio/libvorbis

WANTLIB-pango=		${WANTLIB} \
			X11 fontconfig freetype \
			gstbase-0.10
LIB_DEPENDS-pango=	${LIB_DEPENDS} \
			pango-1.0,pangoft2-1.0::devel/pango

CONFIGURE_ARGS+=	--disable-libvisual \
			--disable-alsa \
			--disable-gst_v4l

.include <bsd.port.mk>
