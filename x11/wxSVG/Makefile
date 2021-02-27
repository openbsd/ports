# $OpenBSD: Makefile,v 1.50 2021/02/27 06:57:43 ajacoutot Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.5.22
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  wxsvg                4.1      # 15.6

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SDL2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xxf86vm aom atk-1.0
WANTLIB += atk-bridge-2.0 avcodec avformat avutil bz2 c cairo
WANTLIB += cairo-gobject crypto dav1d epoxy exif expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl jpeg lzma m mp3lame mspack notify
WANTLIB += ogg opus pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png samplerate sndio speex ssl swresample
WANTLIB += swscale theoradec theoraenc tiff usbhid vorbis vorbisenc
WANTLIB += vpx wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0 wx_gtk3u_html-3.0
WANTLIB += wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0 x264 x265 xcb xcb-render
WANTLIB += xcb-shm xml2 xvidcore z zstd

# comes from multimedia/libvpx using lang/clang MODULE on i386|amd64 only
# which includes gcc4 MODULE with adds gcc-libs in dependency scope
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
WANTLIB += $(LIBECXX)
.endif

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		graphics/cairo \
			graphics/ffmpeg \
			graphics/libexif \
			x11/wxWidgets

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
