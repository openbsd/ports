COMMENT =		DeaDBeeF is an audio player
DISTNAME =		deadbeef-1.9.6
CATEGORIES =		audio

HOMEPAGE =		https://deadbeef.sourceforge.io/

# GPLv2 & LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += BlocksRuntime FLAC X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += aom atk-1.0 atk-bridge-2.0 atspi avcodec avformat avutil
WANTLIB += bz2 c cairo cairo-gobject cddb cdio crypto curl dav1d
WANTLIB += dbus-1 dispatch drm epoll-shim epoxy execinfo expat
WANTLIB += faad ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gthread-2.0 gtk-3 harfbuzz iconv intl jansson jpeg
WANTLIB += lzma m mms mp3lame mpcdec mpg123 nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_quictls ogg opus opusfile pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png pulse pulse-simple
WANTLIB += sndfile speex ssl swresample theoradec theoraenc va
WANTLIB += va-drm va-x11 vorbis vorbisenc vorbisfile vpx wavpack
WANTLIB += wayland-client wayland-cursor wayland-egl x264 x265
WANTLIB += xcb xcb-dri3 xcb-render xcb-shm xkbcommon xml2 xvidcore
WANTLIB += z zip zstd

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
			--disable-sndio \
			--disable-pipewire

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

pre-configure:
	cd ${WRKSRC}; intltoolize --force

post-install:
	@rm ${PREFIX}/lib/deadbeef/*.la

.include <bsd.port.mk>
