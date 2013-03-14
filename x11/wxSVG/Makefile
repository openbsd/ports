# $OpenBSD: Makefile,v 1.21 2013/03/14 07:27:01 brad Exp $

COMMENT=		C++ library to create, manipulate and render SVG files

DISTNAME=		wxsvg-1.1.13
EPOCH=			0
CATEGORIES=		x11 graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=wxsvg/}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		wxsvg	2.0	# .5.4

HOMEPAGE=		http://wxsvg.sourceforge.net/

# Modified LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	GL ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB+=	Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avcodec
WANTLIB+=	avformat avutil bz2 c cairo crypto drm expat ffi fontconfig
WANTLIB+=	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB+=	gmodule-2.0 gobject-2.0 gsm gthread-2.0 gtk-x11-2.0 iodbc
WANTLIB+=	jpeg m mp3lame mspack ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB+=	pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB+=	schroedinger-1.0 sndio speex ssl stdc++ swscale theoradec
WANTLIB+=	theoraenc tiff usbhid vorbis vorbisenc vpx wx_base
WANTLIB+=	wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui
WANTLIB+=	wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa
WANTLIB+=	wx_gtk2_richtext wx_gtk2_xrc x264 xcb xcb-render xcb-shm
WANTLIB+=	xvidcore z

MODULES=	devel/gettext
LIB_DEPENDS =	graphics/ffmpeg>=20121026 \
		graphics/cairo \
		x11/wxWidgets

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

NO_TEST=	Yes

.include <bsd.port.mk>
