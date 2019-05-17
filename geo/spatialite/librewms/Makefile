# $OpenBSD: Makefile,v 1.14 2019/05/17 16:45:26 sthen Exp $

COMMENT =	WMS viewer built on top of spatialite and rasterlite2
DISTNAME =	librewms-1.0.0
PROJECT =	librewms
REVISION =	10

# Licence: GPLv3

LIB_DEPENDS +=	x11/wxWidgets \
		databases/sqlite3 \
		geo/spatialite/libspatialite \
		geo/spatialite/librasterlite2
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto curl dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += freexl fribidi gdk-3 gdk_pixbuf-2.0 geos geos_c geotiff
WANTLIB += gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl jpeg lzma m mspack
WANTLIB += nghttp2 notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proj rasterlite2 samplerate sndio
WANTLIB += spatialite sqlite3 ssl tiff usbhid webp wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0 wx_gtk3u_html-3.0
WANTLIB += wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 z

COMPILER =		base-clang ports-gcc base-gcc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
