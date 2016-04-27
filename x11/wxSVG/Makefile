# $OpenBSD: Makefile,v 1.34 2016/04/27 13:20:31 ajacoutot Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.5.6
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		wxsvg	3.3

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avcodec
WANTLIB += avformat avutil bz2 c cairo crypto estdc++ expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl iodbc jpeg m mp3lame
WANTLIB += mspack ogg opus pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio speex
WANTLIB += ssl stdc++ swresample swscale tiff usbhid vorbis vorbisenc
WANTLIB += vpx wx_base wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html
WANTLIB += wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc x264 x265 xcb
WANTLIB += xcb-render xcb-shm xvidcore z

LIB_DEPENDS=		graphics/ffmpeg \
			graphics/cairo \
			x11/wxWidgets

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
