# $OpenBSD: Makefile,v 1.48 2019/07/12 20:51:24 sthen Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.5.16
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		wxsvg	4.0

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SDL2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += avcodec avformat avutil bz2 c cairo cairo-gobject
WANTLIB += crypto epoxy exif expat ffi fontconfig freetype dav1d
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gsm gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl jpeg m mp3lame mspack notify ogg opus pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png samplerate
WANTLIB += sndio speex ssl swresample swscale tiff usbhid vorbis
WANTLIB += vorbisenc vpx wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0 wx_gtk3u_html-3.0
WANTLIB += wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0 x264 x265 xcb xcb-render
WANTLIB += xcb-shm xvidcore z

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
