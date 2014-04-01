# $OpenBSD: Makefile,v 1.95 2014/04/01 16:31:40 ajacoutot Exp $

# XXX ossaudio(3) is only enabled to be used as a mixing device by
# audio/pulseaudio and x11/xfce4/xfce4-mixer

COMMENT-main=		good elements for GStreamer
COMMENT-aalib=		aalib element for GStreamer (plugins-good)
COMMENT-dv=		dv element for GStreamer (plugins-good)
COMMENT-caca=		libcaca element for GStreamer (plugins-good)

V=			0.10.31
DISTNAME=		gst-plugins-good-${V}
PKGNAME=		gstreamer-plugins-good-${V}

PKGNAME-main=		gstreamer-plugins-good-${V}
PKGNAME-aalib=		gstreamer-aalib-${V}
PKGNAME-dv=		gstreamer-dv-${V}
PKGNAME-caca=		gstreamer-libcaca-${V}
EPOCH-main=		0

REVISION-main=		11
REVISION-aalib=		5
REVISION-dv=		5
REVISION-caca=		5

MULTI_PACKAGES=		-main -aalib -dv -caca

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

MODULES=		devel/gconf2
MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	gst-plugins

WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 pthread
WANTLIB += pcre xml2 m z gstreamer-0.10 gstbase-0.10 ffi

WANTLIB-main += ${WANTLIB} ${MODGCONF2_WANTLIB}
WANTLIB-main += FLAC ICE SM X11 Xdamage Xext Xfixes Xrender
WANTLIB-main += Xv bz2 cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB-main += expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 gstaudio-0.10 gstcontroller-0.10 xcb-shm
WANTLIB-main += gstfft-0.10 gstinterfaces-0.10 gstnetbuffer-0.10 gstpbutils-0.10
WANTLIB-main += gstriff-0.10 gstrtp-0.10 gstrtsp-0.10 gstsdp-0.10 gsttag-0.10
WANTLIB-main += gstvideo-0.10 jpeg ogg orc-0.4 ossaudio pixman-1 png
WANTLIB-main += pthread-stubs shout sndio soup-2.4 soup-gnome-2.4 speex
WANTLIB-main += sqlite3 stdc++ tag theora vorbis wavpack xcb xcb-render

WANTLIB-aalib += ${WANTLIB}
WANTLIB-aalib += X11 aa ncurses xcb

WANTLIB-caca += ${WANTLIB}
WANTLIB-caca += X11 caca ncursesw xcb

WANTLIB-dv += ${WANTLIB}
WANTLIB-dv += dv gstaudio-0.10 gstinterfaces-0.10 gstpbutils-0.10

RUN_DEPENDS=		${BUILD_PKGPATH}
LIB_DEPENDS=		${P}/core

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS += x11/gtk+2

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${MODGCONF2_LIB_DEPENDS} \
			${P}/plugins-base \
			archivers/bzip2 \
			audio/flac \
			audio/speex \
			audio/taglib \
			audio/wavpack \
			devel/libsoup \
			devel/orc \
			graphics/gdk-pixbuf2 \
			graphics/jpeg \
			net/libshout
RUN_DEPENDS-main=	${MODGCONF2_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}

LIB_DEPENDS-aalib=	${LIB_DEPENDS} \
			graphics/aalib

LIB_DEPENDS-dv=		${LIB_DEPENDS} \
			${P}/plugins-base \
			multimedia/libdv

LIB_DEPENDS-caca=	${LIB_DEPENDS} \
			graphics/libcaca

CONFIGURE_ARGS=		--with-aalib-prefix=${LOCALBASE} \
			--disable-dv1394 \
			--disable-pulse \
			--disable-sunaudio \
			--disable-esd \
			--disable-esdtest \
			--disable-oss4 \
			--disable-jack \
			--enable-goom

### SNDIO ###
CONFIGURE_STYLE +=	gnu
AUTOMAKE_VERSION=	1.10
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}
BUILD_DEPENDS +=	devel/libtool # needs needs libtoolize

post-extract:
	cp -R ${FILESDIR} ${WRKSRC}/ext/sndio

# autopoint(1) uses HOME, make sure it exists
pre-configure:
	cd ${WRKSRC} && HOME=${WRKDIST} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOMAKE=automake-${AUTOMAKE_VERSION} \
		NOCONFIGURE="true" \
		${CONFIGURE_ENV} ./autogen.sh ${CONFIGURE_ARGS}
### END SNDIO ###
	perl -pi -e 's,/dev/dsp,/dev/audio,g' \
		${WRKSRC}/docs/plugins/gst-plugins-good-plugins.args \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssink.html \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssrc.html \
		${WRKSRC}/sys/oss/gstosssink.c \
		${WRKSRC}/sys/oss/gstosssrc.c

.include <bsd.port.mk>
