# $OpenBSD: Makefile,v 1.14 2019/05/17 16:45:26 sthen Exp $

COMMENT =	minimalistic GIS on top of spatialite and rasterlite
PROJECT =	spatialite_gis
DISTNAME =	${PROJECT}-1.0.0c
REVISION =	9

LIB_DEPENDS +=	print/libharu \
		databases/sqlite3 \
		x11/wxWidgets>=3.0.4 \
		geo/spatialite/libspatialite \
		geo/spatialite/librasterlite
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype freexl fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 geos geos_c geotiff gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz hpdf iconv intl jpeg lzma m mspack notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proj rasterlite samplerate sndio spatialite sqlite3
WANTLIB += tiff usbhid wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MAKE_ENV =	CXXFLAGS=-DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
