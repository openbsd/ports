COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-1.9.4
CATEGORIES =		audio
REVISION =		0

HOMEPAGE =		https://deadbeef.sourceforge.io/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} BlocksRuntime FLAC X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender aom atk-1.0 atk-bridge-2.0 avcodec avformat
WANTLIB += avutil bz2 c cairo cairo-gobject cddb cdio crypto curl
WANTLIB += dav1d dbus-1 dispatch epoxy execinfo expat faad ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0
WANTLIB += gtk-3 harfbuzz iconv intl jansson jpeg lzma m mms mp3lame
WANTLIB += mpcdec mpg123 nghttp2 ogg opus opusfile pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pulse
WANTLIB += pulse-simple sndfile speex ssl swresample theoradec
WANTLIB += theoraenc vorbis vorbisenc vorbisfile vpx wavpack x264
WANTLIB += x265 xcb xcb-render xcb-shm xml2 xvidcore z zip zstd
WANTLIB += atspi nghttp3 ngtcp2 ngtcp2_crypto_quictls

COMPILER =		base-clang ports-gcc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SITES =			${SITE_SOURCEFORGE:=deadbeef/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		textproc/intltool

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		archivers/libzip \
			audio/faad \
			audio/flac \
			audio/libcddb \
			audio/libcdio \
			audio/libogg \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/opusfile \
			audio/pulseaudio \
			audio/wavpack \
			devel/jansson \
			devel/libdispatch \
			graphics/ffmpeg \
			multimedia/libmms \
			net/curl \
			x11/gtk+3

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

NO_TEST =		Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--disable-static \
			--disable-abstract-socket \
			--disable-adplug \
			--disable-alsa \
			--disable-coreaudio \
			--disable-gme \
			--disable-gtk2 \
			--disable-libmad \
			--disable-mono2stereo \
			--disable-oss \
			--disable-sid \
			--disable-src \
			--disable-supereq \
			--disable-wildmidi \
			--disable-wma \
			--disable-cdda-paranoia

# sndio code worked with 0.7.2 but needs further changes for 1.9.2
CONFIGURE_ARGS +=	--enable-pulse \
			--disable-sndio

CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/lib/libzip/include \
				  -I${X11BASE}/include \
				  -I${WRKSRC}/plugins/dumb/dumb-kode54/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ENV +=	ax_cv_c_flags__msse2='no'
.endif

# XXX: why is this even needed?
MAKE_FLAGS +=		INTL_LIBS=-lintl

post-patch:
	@mkdir -p ${WRKSRC}/plugins/sndio
	@cp ${FILESDIR}/{Makefile.am,sndio.c} ${WRKSRC}/plugins/sndio

post-install:
	@rm ${PREFIX}/lib/deadbeef/*.la

.include <bsd.port.mk>
