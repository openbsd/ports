COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.5.24
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2
REVISION=		1

SHARED_LIBS +=  wxsvg                4.1      # 15.6

HOMEPAGE=		http://wxsvg.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Modified LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xss Xtst Xxf86vm aom aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi avcodec avformat avutil bz2 c cairo cairo-gobject
WANTLIB += crypto curl dav1d dbus-1 enchant-2 epoxy execinfo exif
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gsm gspell-1 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv icudata icuuc intl jpeg lzma m mp3lame
WANTLIB += mspack nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_openssl
WANTLIB += notify ogg opus pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-32 pcre2-8 pixman-1 png samplerate secret-1 sndio
WANTLIB += speex ssl swresample swscale theoradec theoraenc tiff
WANTLIB += usbhid vorbis vorbisenc vpx wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_baseu_xml-3.2 wx_gtk3u_core-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_qa-3.2 wx_gtk3u_xrc-3.2 x264 x265 xcb xcb-render
WANTLIB += xcb-shm xml2 xvidcore z zstd

COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/cairo \
			graphics/ffmpeg \
			graphics/libexif \
			x11/wxWidgets

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
