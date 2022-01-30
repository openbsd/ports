# $OpenBSD: Makefile,v 1.51 2022/01/30 10:13:13 ajacoutot Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.5.23
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  wxsvg                4.1      # 15.6

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xss Xxf86vm aom atk-1.0 atk-bridge-2.0 avcodec avformat
WANTLIB += avutil bz2 c cairo cairo-gobject crypto dav1d epoxy
WANTLIB += execinfo exif expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsm gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += jpeg lzma m mp3lame mspack notify ogg opus pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png samplerate
WANTLIB += sndio speex ssl swresample swscale theoradec theoraenc
WANTLIB += tiff usbhid vorbis vorbisenc vpx wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += x264 x265 xcb xcb-render xcb-shm xml2 xvidcore z zstd

COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/cairo \
			graphics/ffmpeg \
			graphics/libexif \
			x11/wxWidgets

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
