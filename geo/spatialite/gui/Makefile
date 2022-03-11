COMMENT =	GUI for spatialite
DISTNAME =	spatialite_gui-2.1.0-beta1
PKGNAME =	spatialite_gui-2.1.0beta1
PROJECT =	spatialite_gui
MASTER_SITES =	http://www.gaia-gis.it/gaia-sins/spatialite-gui-sources/

LIB_DEPENDS +=	x11/wxWidgets>=3.0.4 \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=5.0.0 \
		geo/spatialite/librasterlite2>=1.1.0beta1 \
		geo/spatialite/virtualpg
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype freexl fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 geos geos_c geotiff
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl jpeg lzma m mspack
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proj samplerate sndio spatialite sqlite3 tiff
WANTLIB += usbhid wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 z
WANTLIB += Xss bz2 charset crypto curl gif lz4 minizip nghttp2
WANTLIB += openjp2 pq rasterlite2 rttopo ssl virtualpg webp zstd

COMPILER =		base-clang ports-gcc base-gcc

# so that it finds all libs without rpath..
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--disable-xlsxwriter

# Checking libpq fails on ld.bfd archs; LIBS is crowded with flags coming
# from other configure AC_CHECK_LIB checks, pulling X11 libraries.
# ac_cv_lib_pq_PQconnectdb="yes" could have been used as well. The extra
# space matters.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ENV +=	LIBS="-L${X11BASE}/lib "
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{pixmaps,applications}
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/gnome_resource/*.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
