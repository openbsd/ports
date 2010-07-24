# $OpenBSD: Makefile,v 1.25 2010/07/24 07:35:08 ajacoutot Exp $

COMMENT-main =		base elements for GStreamer
COMMENT-gnome =		gnome vfs element for GStreamer (plugins-base)
COMMENT-cdda =		cd paranoia element for GStreamer (plugins-base)

V =			0.10.30
DISTNAME =		gst-plugins-base-${V}

PKGNAME-main =		gstreamer-plugins-base-${V}
PKGNAME-gnome =		gstreamer-gnome-${V}
PKGNAME-cdda =		gstreamer-cdda-${V}

REVISION-gnome =	0
REVISION-cdda =		0

MULTI_PACKAGES =	-main -gnome -cdda

SHARED_LIBS +=  gstinterfaces-0.10   2.2      # .21.0
SHARED_LIBS +=  gsttag-0.10          2.2      # .21.0
SHARED_LIBS +=  gstfft-0.10          2.2      # .21.0
SHARED_LIBS +=  gstnetbuffer-0.10    2.2      # .21.0
SHARED_LIBS +=  gstpbutils-0.10      2.2      # .21.0
SHARED_LIBS +=  gstrtp-0.10          2.2      # .21.0
SHARED_LIBS +=  gstsdp-0.10          2.2      # .21.0
SHARED_LIBS +=  gstvideo-0.10        2.2      # .21.0
SHARED_LIBS +=  gstapp-0.10          2.2      # .21.0
SHARED_LIBS +=  gstaudio-0.10        2.2      # .21.0
SHARED_LIBS +=  gstcdda-0.10         2.2      # .21.0
SHARED_LIBS +=  gstriff-0.10         2.2      # .21.0
SHARED_LIBS +=  gstrtsp-0.10         2.2      # .21.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-base/}
MODULES =		devel/gettext

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10.29:${P}/core

WANTLIB-main =		${WANTLIB} \
			Xv X11 ICE SM Xext Xau Xdmcp \
			gstdataprotocol-0.10 gstcontroller-0.10 gstbase-0.10 \
			pthread-stubs xcb expat fontconfig freetype ogg \
			Xrender cairo gio-2.0 glitz pixman-1 png \
			xcb-render xcb-render-util vorbis vorbisenc pango-1.0 \
			pangoft2-1.0 pangocairo-1.0 theoradec theoraenc \
			vorbisidec orc-0.4 orc-test-0.4
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			:orc->=0.4.6:devel/orc \
			::audio/libvorbis \
			::devel/pango \
			::multimedia/libtheora \
			::audio/tremor
RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-gnome =		${WANTLIB} \
			ORBit-2 avahi-client avahi-common avahi-glib \
			crypto gconf-2 ssl gsttag-0.10 gnomevfs-2 \
			gstbase-0.10 util dbus-1 dbus-glib-1
LIB_DEPENDS-gnome = 	${LIB_DEPENDS} \
			gsttag-0.10::${BUILD_PKGPATH} \
			::x11/gnome/vfs2

WANTLIB-cdda =		${WANTLIB} \
			gstbase-0.10 gsttag-0.10 cdda_interface cdda_paranoia
LIB_DEPENDS-cdda = 	${LIB_DEPENDS} \
			::${BUILD_PKGPATH} \
			::audio/cdparanoia

CONFIGURE_ARGS +=	--disable-libvisual \
			--disable-alsa \
			--disable-gst_v4l \
			--enable-orc
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

.include <bsd.port.mk>
