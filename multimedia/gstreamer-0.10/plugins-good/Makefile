# $OpenBSD: Makefile,v 1.39 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT-main =		multimedia framework - good plugins
COMMENT-aalib =		multimedia framework - aalib plugin
COMMENT-cairo =		multimedia framework - cairo plugin
COMMENT-gconf =		multimedia framework - conf elements
COMMENT-esd =		multimedia framework - esound plugin
COMMENT-flac =		multimedia framework - flac plugin
COMMENT-speex =		multimedia framework - speex plugin
COMMENT-taglib =	multimedia framework - taglib plugin
COMMENT-dv =		multimedia framework - dv plugin
COMMENT-jpeg =		multimedia framework - jpeg plugin
COMMENT-png =		multimedia framework - png plugin
COMMENT-gdk =		multimedia framework - gdk pixbuf plugin
COMMENT-caca =		multimedia framework - libcaca plugin
COMMENT-shout =		multimedia framework - shoutcast plugin
COMMENT-soup =		multimedia framework - libsoup plugin
COMMENT-wavpack =	multimedia framework - wavpack plugin

V =			0.10.8
DISTNAME =		gst-plugins-good-$V
PKGNAME-main =		gstreamer-plugins-good-$Vp11v0
PKGNAME-aalib =		gstreamer-aalib-$Vp2
PKGNAME-cairo =		gstreamer-cairo-$Vp3
PKGNAME-gconf =		gstreamer-confelements-$Vp4
PKGNAME-esd =		gstreamer-esd-$Vp3
PKGNAME-flac =		gstreamer-flac-$Vp2
PKGNAME-speex =		gstreamer-speex-$Vp2
PKGNAME-taglib =	gstreamer-taglib-$Vp2
PKGNAME-dv =		gstreamer-dv-$Vp2
PKGNAME-jpeg =		gstreamer-jpeg-$Vp2
PKGNAME-png =		gstreamer-png-$Vp2
PKGNAME-gdk =		gstreamer-gdk-pixbuf-$Vp4
PKGNAME-caca =		gstreamer-libcaca-$Vp2
PKGNAME-shout =		gstreamer-shoutcast-$Vp2
PKGNAME-soup =		gstreamer-libsoup-$Vp3
PKGNAME-wavpack =	gstreamer-wavpack-$Vp1

MULTI_PACKAGES =	-main -aalib -cairo -gconf -esd -flac -speex \
			-taglib -dv -jpeg -png -gdk -caca -shout -soup \
			-wavpack
SHARED_LIBS =

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-good/}

USE_X11 =		Yes
MODULES =		devel/gettext

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			pcre xml2 m z
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core

WANTLIB-main =		${WANTLIB} \
			ICE SM X11 Xdamage Xext Xfixes sndio \
			gstcontroller-0.10 gstbase-0.10 Xau Xdmcp
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstaudio-0.10,gstinterfaces-0.10,gstnetbuffer-0.10,gstriff-0.10,gstrtp-0.10,gsttag-0.10,gstvideo-0.10,gstfft-0.10,gstrtsp-0.10,gstsdp-0.10::$P/plugins-base
RUN_DEPENDS-main =	

WANTLIB-aalib=		${WANTLIB} \
			X11 ncurses gstbase-0.10 Xau Xdmcp
LIB_DEPENDS-aalib =	${LIB_DEPENDS} \
			aa::graphics/aalib

WANTLIB-cairo =		${WANTLIB} \
			X11 Xau Xdmcp Xrender fontconfig freetype \
			pixman-1 glitz png gstbase-0.10 expat
LIB_DEPENDS-cairo =	${LIB_DEPENDS} \
			cairo::graphics/cairo

WANTLIB-gconf =		${WANTLIB} \
			ORBit-2 dbus-1 dbus-glib-1
LIB_DEPENDS-gconf =	${LIB_DEPENDS} \
			gconf-2::devel/gconf2

WANTLIB-esd =		${WANTLIB} \
			audiofile gstbase-0.10 sndio

LIB_DEPENDS-esd=	${LIB_DEPENDS} \
			esd::audio/esound \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base

WANTLIB-flac =		${WANTLIB} \
			ogg gstbase-0.10

LIB_DEPENDS-flac =	${LIB_DEPENDS} \
			FLAC::audio/flac \
			gsttag-0.10::$P/plugins-base

WANTLIB-speex =		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-speex =	${LIB_DEPENDS} \
			speex::audio/speex \
			gsttag-0.10::$P/plugins-base

WANTLIB-taglib =	${WANTLIB} \
			stdc++ gstbase-0.10

LIB_DEPENDS-taglib =	${LIB_DEPENDS} \
			gsttag-0.10::$P/plugins-base \
			tag::audio/taglib

WANTLIB-dv =		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-dv =	${LIB_DEPENDS} \
			dv::multimedia/libdv \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base

WANTLIB-jpeg =		${WANTLIB} \

LIB_DEPENDS-jpeg =	${LIB_DEPENDS} \
			jpeg::graphics/jpeg

WANTLIB-png =		${WANTLIB} \

LIB_DEPENDS-png =	${LIB_DEPENDS} \
			png::graphics/png

WANTLIB-gdk =		${WANTLIB} \
			X11 Xcomposite Xdamage Xext Xrender atk-1.0 \
			cairo fontconfig freetype gio-2.0 glitz pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png gstbase-0.10 \
			Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat

LIB_DEPENDS-gdk =	${LIB_DEPENDS} \
			gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2 \
			gstvideo-0.10::$P/plugins-base

BUILD_DEPENDS +=	::graphics/libcaca

WANTLIB-caca =		${WANTLIB} \
			X11 gstbase-0.10 ncurses Xau Xdmcp

LIB_DEPENDS-caca =	${LIB_DEPENDS}

WANTLIB-shout =		${WANTLIB} \
			gstbase-0.10 ogg speex vorbis theora

LIB_DEPENDS-shout =	${LIB_DEPENDS} \
			speex::audio/speex \
			shout::net/libshout

WANTLIB-soup =		${WANTLIB} \
			gcrypt gio-2.0 gnutls gpg-error gstbase-0.10 \
			tasn1 gsttag-0.10

LIB_DEPENDS-soup =	${LIB_DEPENDS} \
			soup-2.4::devel/libsoup

WANTLIB-wavpack =	${WANTLIB}

LIB_DEPENDS-wavpack =	${LIB_DEPENDS} \
			wavpack::audio/wavpack \
			gstaudio-0.10,gstbase-0.10,gstinterfaces-0.10::$P/plugins-base

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} 
AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-aalib-prefix=${LOCALBASE} \
			--disable-cdio \
			--disable-dv1394 \
			--without-check \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gst-plugins \
			--disable-schemas-install \
			--enable-experimental \
			--enable-gst_v4l2 \
			--enable-goom \
			--with-default-audiosink=libsndiosink \
			--with-default-audiosrc=libsndiosrc \
			--with-default-videosink=xvimagesink \
			--with-default-videosrc=v4l2src

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/libsndio

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} NOCONFIGURE="true" ./autogen.sh

.include <bsd.port.mk>
