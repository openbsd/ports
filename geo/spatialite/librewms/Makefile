# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 09:25:28 landry Exp $

COMMENT =	WMS viewer built on top of spatialite and rasterlite2
DISTNAME =	librewms-1.0.0

# Licence: GPLv3

LIB_DEPENDS +=	x11/wxWidgets \
		geo/spatialite/libspatialite \
		geo/spatialite/librasterlite2
RUN_DEPENDS +=	devel/desktop-file-utils
MODULES +=	devel/gettext

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += expat ffi fontconfig freetype freexl gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 geos geos_c geotiff gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iodbc jpeg m mspack pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proj pthread pthread-stubs
WANTLIB += sndio spatialite sqlite3 stdc++ tiff usbhid wx_base
WANTLIB += wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui
WANTLIB += wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc xcb xcb-render xcb-shm
WANTLIB += crypto curl gif idn lzma rasterlite2 ssl webp xml2 z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
