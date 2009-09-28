# $OpenBSD: Makefile,v 1.47 2009/09/28 19:52:15 ajacoutot Exp $

COMMENT-main =		multimedia framework - good plugins
COMMENT-aalib =		multimedia framework - aalib plugin
COMMENT-gconf =		multimedia framework - conf elements
COMMENT-esd =		multimedia framework - esound plugin
COMMENT-dv =		multimedia framework - dv plugin
COMMENT-gdk =		multimedia framework - gdk pixbuf plugin
COMMENT-caca =		multimedia framework - libcaca plugin
COMMENT-soup =		multimedia framework - libsoup plugin

V =			0.10.8
DISTNAME =		gst-plugins-good-$V

PKGNAME-main =		gstreamer-plugins-good-$Vp76v0
PKGNAME-aalib =		gstreamer-aalib-$Vp6
PKGNAME-gconf =		gstreamer-confelements-$Vp9
PKGNAME-esd =		gstreamer-esd-$Vp6
PKGNAME-dv =		gstreamer-dv-$Vp5
PKGNAME-gdk =		gstreamer-gdk-pixbuf-$Vp8
PKGNAME-caca =		gstreamer-libcaca-$Vp6
PKGNAME-soup =		gstreamer-libsoup-$Vp6

MULTI_PACKAGES =	-main -aalib -gconf -esd \
			-dv -gdk -caca -soup

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-good/}

USE_X11 =		Yes
MODULES =		devel/gettext \
			devel/gconf2

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	gst-plugins

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			pcre xml2 m z
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core

WANTLIB-main =		${WANTLIB} \
			ICE SM X11 Xdamage Xext Xfixes sndio \
			gstcontroller-0.10 gstbase-0.10 Xau Xdmcp \
			pthread-stubs xcb Xrender cairo expat \
			fontconfig freetype glitz ogg pixman-1 png \
			stdc++ theora vorbis
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstaudio-0.10,gstinterfaces-0.10,gstnetbuffer-0.10,gstriff-0.10,gstrtp-0.10,gsttag-0.10,gstvideo-0.10,gstfft-0.10,gstrtsp-0.10,gstsdp-0.10::$P/plugins-base \
			FLAC.>=9::audio/flac \
			jpeg.>=62::graphics/jpeg \
			tag.>=7::audio/taglib \
			wavpack::audio/wavpack \
			speex::audio/speex \
			gsttag-0.10::$P/plugins-base \
			shout::net/libshout
RUN_DEPENDS-main =	

WANTLIB-aalib=		${WANTLIB} \
			X11 ncurses gstbase-0.10 Xau Xdmcp pthread-stubs xcb
LIB_DEPENDS-aalib =	${LIB_DEPENDS} \
			aa::graphics/aalib

WANTLIB-gconf =		${WANTLIB} \
			ORBit-2 dbus-1 dbus-glib-1
LIB_DEPENDS-gconf =	${LIB_DEPENDS} \
			${MODGCONF2_LIB_DEPENDS}
RUN_DEPENDS-gconf =	${RUN_DEPENDS} \
			${MODGCONF2_RUN_DEPENDS}

WANTLIB-esd =		${WANTLIB} \
			audiofile gstbase-0.10 sndio
LIB_DEPENDS-esd=	${LIB_DEPENDS} \
			esd::audio/esound \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base

WANTLIB-dv =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-dv =	${LIB_DEPENDS} \
			dv::multimedia/libdv \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base

WANTLIB-gdk =		${WANTLIB} \
			X11 Xcomposite Xdamage Xext Xrender atk-1.0 \
			cairo fontconfig freetype gio-2.0 glitz pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png gstbase-0.10 \
			Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat \
			pthread-stubs xcb
LIB_DEPENDS-gdk =	${LIB_DEPENDS} \
			gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2 \
			gstvideo-0.10::$P/plugins-base

WANTLIB-caca =		${WANTLIB} \
			X11 gstbase-0.10 ncurses Xau Xdmcp pthread-stubs xcb
LIB_DEPENDS-caca =	${LIB_DEPENDS}

WANTLIB-soup =		${WANTLIB} \
			gcrypt gio-2.0 gnutls gpg-error gstbase-0.10 \
			tasn1 gsttag-0.10
LIB_DEPENDS-soup =	${LIB_DEPENDS} \
			soup-2.4::devel/libsoup

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}  \
			::graphics/libcaca

AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-aalib-prefix=${LOCALBASE} \
			--disable-cdio \
			--disable-dv1394 \
			--without-check \
			--enable-experimental \
			--enable-gst_v4l2 \
			--enable-goom \
			--with-default-audiosink=libsndiosink \
			--with-default-audiosrc=libsndiosrc \
			--with-default-videosink=xvimagesink \
			--with-default-videosrc=v4l2src

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/libsndio

# autopoint(1) uses HOME, make sure it exists
pre-configure:
	cd ${WRKSRC} && HOME=${WRKDIST} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} NOCONFIGURE="true" ./autogen.sh

.include <bsd.port.mk>
