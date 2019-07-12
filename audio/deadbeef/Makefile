# $OpenBSD: Makefile,v 1.43 2019/07/12 20:43:32 sthen Exp $

COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-0.7.2
REVISION =		13
CATEGORIES =		audio

HOMEPAGE =		http://deadbeef.sourceforge.net/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC Imlib2 X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 atspi avcodec avformat avutil
WANTLIB += bz2 c cairo cairo-gobject cddb cdio crypto curl dbus-1
WANTLIB += epoxy expat faad ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gthread-2.0 gtk-3 harfbuzz iconv intl jansson m
WANTLIB += mad mms mp3lame mp4ff mpcdec nghttp2 ogg opus pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += sndfile sndio speex ssl swresample vorbis vorbisenc
WANTLIB += vorbisfile vpx wavpack x264 x265 xcb xcb-render xcb-shm
WANTLIB += xvidcore z zip fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=deadbeef/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		textproc/intltool

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
			devel/jansson \
			graphics/ffmpeg \
			graphics/imlib2 \
			multimedia/libmms \
			net/curl \
			x11/dbus \
			x11/gtk+3

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

NO_TEST =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-static \
			--disable-abstract-socket \
			--disable-adplug \
			--disable-alsa \
			--disable-coreaudio \
			--disable-gme \
			--disable-gtk2 \
			--disable-libmpg123 \
			--disable-mono2stereo \
			--disable-oss \
			--disable-pulse \
			--disable-sid \
			--disable-src \
			--disable-supereq \
			--disable-wildmidi \
			--disable-wma \
			--disable-cdda-paranoia
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/lib/libzip/include \
				  -I${X11BASE}/include \
				  -I${WRKSRC}/plugins/dumb/dumb-kode54/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'
.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ENV +=	ax_cv_c_flags__msse2='no'
.endif

post-patch:
	@mkdir -p ${WRKSRC}/m4 # XXX need for autoreconf
	@mkdir -p ${WRKSRC}/plugins/sndio
	@cp ${FILESDIR}/{Makefile.am,sndio.c} ${WRKSRC}/plugins/sndio

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf

post-install:
	@rm ${PREFIX}/lib/deadbeef/*.la

.include <bsd.port.mk>
