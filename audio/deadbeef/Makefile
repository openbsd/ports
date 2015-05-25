# $OpenBSD: Makefile,v 1.19 2015/05/25 07:54:28 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-0.6.2
REVISION =		5
CATEGORIES =		audio

HOMEPAGE =		http://deadbeef.sourceforge.net/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 avcodec avformat
WANTLIB += avutil c cairo cddb cdio crypto curl dbus-1 expat faad
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz idn m mad mms mp4ff mpcdec ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs sndfile sndio ssl vorbis vorbisenc
WANTLIB += vorbisfile wavpack xcb xcb-render xcb-shm z zip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=deadbeef/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext \
			textproc/intltool

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		archivers/libzip \
			audio/faad \
			audio/flac \
			audio/libcdio \
			audio/libmad \
			audio/libogg \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/wavpack \
			graphics/ffmpeg \
			graphics/imlib2 \
			multimedia/libmms \
			net/curl \
			x11/dbus \
			x11/gtk+2

USE_GMAKE =		Yes
USE_LIBTOOL =		gnu
LIBTOOL_FLAGS =		--tag=disable-static

NO_TEST =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-abstract-socket \
			--disable-adplug \
			--disable-alsa \
			--disable-coreaudio \
			--disable-gme \
			--disable-gtk3 \
			--disable-mono2stereo \
			--disable-oss \
			--disable-pulse \
			--disable-sid \
			--disable-src \
			--disable-supereq \
			--disable-wildmidi \
			--disable-wma
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/lib/libzip/include \
				  -I${X11BASE}/include \
				  -I${WRKSRC}/plugins/dumb/dumb-kode54/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

post-patch:
	@mkdir -p ${WRKSRC}/m4 # XXX need for autoreconf
	@mkdir -p ${WRKSRC}/plugins/sndio
	@cp ${FILESDIR}/{Makefile.am,sndio.c} ${WRKSRC}/plugins/sndio

pre-configure:
	@cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf

post-install:
	@rm ${PREFIX}/lib/deadbeef/*.la

.include <bsd.port.mk>
