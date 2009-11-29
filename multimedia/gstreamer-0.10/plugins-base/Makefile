# $OpenBSD: Makefile,v 1.20 2009/11/29 09:17:17 ajacoutot Exp $

COMMENT-main =		base elements for GStreamer
COMMENT-gnome =		gnome vfs element for GStreamer (base)
COMMENT-cdda =		cd paranoia element for GStreamer (base)

V =			0.10.25
DISTNAME =		gst-plugins-base-$V

PKGNAME-main =		gstreamer-plugins-base-$V
PKGNAME-gnome =		gstreamer-gnome-$V
PKGNAME-cdda =		gstreamer-cdda-$V

MULTI_PACKAGES =	-main -gnome -cdda

SHARED_LIBS +=  gstinterfaces-0.10   1.0      # .18.0
SHARED_LIBS +=  gsttag-0.10          1.0      # .18.0
SHARED_LIBS +=  gstaudio-0.10        1.0      # .18.0
SHARED_LIBS +=  gstcdda-0.10         1.0      # .18.0
SHARED_LIBS +=  gstfft-0.10          1.0      # .18.0
SHARED_LIBS +=  gstnetbuffer-0.10    1.0      # .18.0
SHARED_LIBS +=  gstpbutils-0.10      1.0      # .18.0
SHARED_LIBS +=  gstriff-0.10         1.0      # .18.0
SHARED_LIBS +=  gstrtp-0.10          1.0      # .18.0
SHARED_LIBS +=  gstsdp-0.10          1.0      # .18.0
SHARED_LIBS +=  gstrtsp-0.10         1.0      # .18.0
SHARED_LIBS +=  gstvideo-0.10        1.0      # .18.0
SHARED_LIBS +=  gstapp-0.10          1.0      # .18.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-base/}
MODULES =		devel/gettext

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core

WANTLIB-main =		${WANTLIB} \
			Xv X11 ICE SM Xext Xau Xdmcp \
			gstdataprotocol-0.10 gstcontroller-0.10 gstbase-0.10 \
			pthread-stubs xcb expat fontconfig freetype ogg \
			Xrender cairo gio-2.0 glitz pixman-1 png
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			vorbis.>=7,vorbisenc::audio/libvorbis \
			pango-1.0.>=1801,pangoft2-1.0,pangocairo-1.0::devel/pango \
			theoradec,theoraenc::multimedia/libtheora
RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

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
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

.include <bsd.port.mk>
