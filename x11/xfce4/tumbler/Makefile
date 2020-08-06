# $OpenBSD: Makefile,v 1.39 2020/08/06 16:22:06 landry Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.2.9
XFCE_PROJECT=	tumbler

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender aom avcodec avformat avutil bz2 c cairo
WANTLIB += crypto curl dav1d expat ffi ffmpegthumbnailer
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 jpeg
WANTLIB += lcms2 lzma m nghttp2 ogg openjp2 pcre pixman-1 png poppler
WANTLIB += poppler-glib pthread ssl swscale tiff
WANTLIB += vorbis xcb xcb-render xcb-shm xml2 z iconv intl
WANTLIB += ${COMPILER_LIBCXX} ass avfilter avresample fribidi
WANTLIB += gsm mp3lame opus postproc speex swresample vorbisenc
WANTLIB += vpx x264 x265 xvidcore theoradec theoraenc zstd

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/tumbler-1/plugins lib/tumbler-1/plugins/cache

CONFIGURE_ARGS =	--disable-raw-thumbnailer \
			--disable-gstreamer-thumbnailer

# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'
FAKE_FLAGS =	confdir=${PREFIX}/share/examples/tumbler

LIB_DEPENDS +=	devel/libgsf \
		net/curl \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		graphics/ffmpegthumbnailer \
		graphics/gdk-pixbuf2

.include <bsd.port.mk>
