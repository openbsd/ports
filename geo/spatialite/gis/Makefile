# $OpenBSD: Makefile,v 1.3 2015/08/25 12:57:33 sthen Exp $

COMMENT =	minimalistic GIS on top of spatialite and rasterlite
PROJECT =	spatialite_gis
DISTNAME =	${PROJECT}-1.0.0c
REVISION=	1

LIB_DEPENDS +=	print/libharu \
		x11/wxWidgets \
		geo/spatialite/libspatialite \
		geo/spatialite/librasterlite
RUN_DEPENDS +=	devel/desktop-file-utils
MODULES +=	devel/gettext

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += expat ffi fontconfig freetype freexl gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += geos geos_c geotiff gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 hpdf graphite2 harfbuzz
WANTLIB += iodbc jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proj pthread pthread-stubs rasterlite
WANTLIB += sndio spatialite sqlite3 stdc++ tiff usbhid wx_base
WANTLIB += wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui
WANTLIB += wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc xcb xcb-render xcb-shm
WANTLIB += z lzma xml2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
