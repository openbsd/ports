# $OpenBSD: Makefile,v 1.16 2019/05/17 16:45:26 sthen Exp $

COMMENT =	GUI for spatialite
DISTNAME =	spatialite_gui-1.7.1
PROJECT =	spatialite_gui
REVISION =	9

LIB_DEPENDS +=	x11/wxWidgets>=3.0.4 \
		databases/sqlite3 \
		geo/spatialite/libspatialite \
		geo/spatialite/libgaiagraphics
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype freexl fribidi
WANTLIB += gaiagraphics gdk-3 gdk_pixbuf-2.0 geos geos_c geotiff
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl jpeg lzma m mspack
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proj samplerate sndio spatialite sqlite3 tiff
WANTLIB += usbhid wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

# so that it finds all libs without rpath..
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
