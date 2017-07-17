# $OpenBSD: Makefile,v 1.29 2017/07/17 14:03:52 landry Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.2.0
XFCE_GOODIE=	tumbler

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender avcodec avformat avutil bz2 c cairo
WANTLIB += crypto curl expat ffi ffmpegthumbnailer
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 jpeg
WANTLIB += lcms2 lzma m nghttp2 ogg openjp2 pcre pixman-1 png poppler
WANTLIB += poppler-glib pthread pthread-stubs ssl swscale tiff
WANTLIB += vorbis xcb xcb-render xcb-shm xml2 z iconv intl

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
