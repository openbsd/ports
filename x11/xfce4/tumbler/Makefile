COMMENT=	D-Bus thumbnailing service

XFCE_PROJECT=	tumbler
XFCE_VERSION=	4.18.1
REVISION=	1

SHARED_LIBS+=	tumbler-1 1.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender aom avcodec avformat avutil bz2 c cairo
WANTLIB += crypto curl dav1d expat ffi ffmpegthumbnailer
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 jpeg
WANTLIB += lcms2 lzma m nghttp2 ogg openjp2 pcre2-8 pixman-1 png poppler
WANTLIB += poppler-glib pthread ssl swscale tiff harfbuzz
WANTLIB += vorbis xcb xcb-render xcb-shm xml2 z iconv intl
WANTLIB += ${COMPILER_LIBCXX} ass avfilter fribidi unibreak
WANTLIB += gsm mp3lame opus postproc speex swresample vorbisenc
WANTLIB += vpx x264 x265 xfce4util xvidcore theoradec theoraenc zstd
WANTLIB += Xau Xdmcp vidstab nghttp3 ngtcp2 ngtcp2_crypto_quictls zimg

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/tumbler-1/plugins lib/tumbler-1/plugins/cache
MODXFCE_ICON_CACHE =	Yes

CONFIGURE_ARGS =	--disable-raw-thumbnailer \
			--disable-gepub-thumbnailer \
			--disable-gstreamer-thumbnailer

# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'
FAKE_FLAGS =	confdir=${PREFIX}/share/examples/tumbler

LIB_DEPENDS +=	x11/xfce4/libxfce4util>=4.17.1 \
		devel/libgsf \
		net/curl \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		graphics/ffmpegthumbnailer \
		graphics/gdk-pixbuf2

.include <bsd.port.mk>
