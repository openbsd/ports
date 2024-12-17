COMMENT=	D-Bus thumbnailing service

XFCE_PROJECT=	tumbler

SHARED_LIBS+=	tumbler-1 1.0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Lerc X11 X11-xcb Xau Xdmcp Xext
WANTLIB += Xfixes Xrender aom ass avcodec avfilter avformat avutil
WANTLIB += bz2 c cairo crypto curl dav1d drm expat ffi ffmpegthumbnailer
WANTLIB += fontconfig freetype fribidi gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 gsm gthread-2.0
WANTLIB += harfbuzz iconv intl jpeg lcms2 lzma m mp3lame nghttp2
WANTLIB += nghttp3 ngtcp2 ngtcp2_crypto_quictls ogg openjp2 opus
WANTLIB += pcre2-8 pixman-1 png poppler poppler-glib postproc
WANTLIB += speex ssl swresample swscale theoradec theoraenc tiff
WANTLIB += unibreak va va-drm va-x11 vidstab vorbis vorbisenc
WANTLIB += vpx x264 x265 xcb xcb-dri3 xcb-render xcb-shm xfce4util
WANTLIB += xml2 xvidcore z zimg zstd

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
		graphics/ffmpeg \
		graphics/gdk-pixbuf2

.include <bsd.port.mk>
