# $OpenBSD: Makefile,v 1.58 2010/07/24 09:25:01 sthen Exp $

COMMENT-main =		good elements for GStreamer
COMMENT-aalib =		aalib element for GStreamer (plugins-good)
COMMENT-dv =		dv element for GStreamer (plugins-good)
COMMENT-gdk =		gdk pixbuf element for GStreamer (plugins-good)
COMMENT-caca =		libcaca element for GStreamer (plugins-good)
COMMENT-soup =		libsoup element for GStreamer (plugins-good)

V =			0.10.24
DISTNAME =		gst-plugins-good-$V

PKGNAME-main =		gstreamer-plugins-good-${V}
EPOCH-main =		0
PKGNAME-aalib =		gstreamer-aalib-${V}
PKGNAME-dv =		gstreamer-dv-${V}
PKGNAME-gdk =		gstreamer-gdk-pixbuf-${V}
PKGNAME-caca =		gstreamer-libcaca-${V}
PKGNAME-soup =		gstreamer-libsoup-${V}

REVISION =		1

MULTI_PACKAGES =	-main -aalib \
			-dv -gdk -caca -soup

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-good/}

USE_X11 =		Yes
MODULES =		devel/gettext \
			devel/gconf2

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	gst-plugins

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

RUN_DEPENDS =		::${BUILD_PKGPATH}
WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			pcre xml2 m z gstreamer-0.10 gstbase-0.10
LIB_DEPENDS =		:gstreamer->=0.10.30:$P/core

WANTLIB-main =		${WANTLIB} \
			ICE SM X11 Xdamage Xext Xfixes sndio ossaudio \
			gstcontroller-0.10 Xau Xdmcp xcb-render xcb-render-util \
			pthread-stubs xcb Xrender cairo expat orc-0.4 \
			fontconfig freetype glitz ogg pixman-1 png \
			stdc++ theora vorbis ORBit-2 dbus-1 dbus-glib-1 \
			gstaudio-0.10 gstinterfaces-0.10 gstnetbuffer-0.10 \
			gstriff-0.10 gstrtp-0.10 gsttag-0.10 gstvideo-0.10 \
			gstfft-0.10 gstrtsp-0.10 gstsdp-0.10 gstpbutils-0.10 \
			FLAC jpeg tag wavpack speex gsttag-0.10 shout bz2
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODGCONF2_LIB_DEPENDS} \
			:orc->=0.4.6:devel/orc \
			::${P}/plugins-base \
			::audio/flac \
			::graphics/jpeg \
			::audio/taglib \
			::audio/wavpack \
			::audio/speex \
			::$P/plugins-base \
			::net/libshout \
			::archivers/bzip2
RUN_DEPENDS-main =	${MODGCONF2_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}

WANTLIB-aalib=		${WANTLIB} \
			X11 ncurses Xau Xdmcp pthread-stubs xcb aa
LIB_DEPENDS-aalib =	${LIB_DEPENDS} \
			::graphics/aalib

WANTLIB-dv =		${WANTLIB} dv gstaudio-0.10 gstinterfaces-0.10
LIB_DEPENDS-dv =	${LIB_DEPENDS} \
			::multimedia/libdv \
			::${P}/plugins-base

WANTLIB-gdk =		${WANTLIB} \
			gio-2.0 gdk_pixbuf-2.0 gstvideo-0.10
LIB_DEPENDS-gdk =	${LIB_DEPENDS} \
			::x11/gtk+2 \
			::$P/plugins-base

WANTLIB-caca =		${WANTLIB} \
			X11 ncurses Xau Xdmcp pthread-stubs xcb caca
LIB_DEPENDS-caca =	${LIB_DEPENDS} \
			::graphics/libcaca

WANTLIB-soup =		${WANTLIB} \
			ORBit-2 dbus-1 dbus-glib-1 gcrypt gio-2.0 \
			gnome-keyring gnutls gpg-error gsttag-0.10 proxy \
			sqlite3 tasn1 eggdbus-1 soup-2.4 soup-gnome-2.4
LIB_DEPENDS-soup =	${LIB_DEPENDS} \
			${MODGCONF2_LIB_DEPENDS} \
			::devel/libsoup,-gnome

CONFIGURE_ARGS +=	--with-aalib-prefix=${LOCALBASE} \
			--disable-dv1394 \
			--disable-hal \
			--disable-osx_audio \
			--disable-osx_video \
			--disable-pulse \
			--disable-directsound \
			--disable-sunaudio \
			--disable-esd \
			--disable-esdtest \
			--disable-oss4 \
			--enable-gst_v4l2 \
			--enable-goom \
			--enable-orc
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/libsndio

AUTOMAKE_VERSION =	1.10
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS}

# autopoint(1) uses HOME, make sure it exists
pre-configure:
	cd ${WRKSRC} && HOME=${WRKDIST} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} AUTOMAKE=automake-${AUTOMAKE_VERSION} \
		NOCONFIGURE="true" ./autogen.sh

.include <bsd.port.mk>
