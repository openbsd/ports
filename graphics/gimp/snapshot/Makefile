USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT=	GNU Image Manipulation Program

# needs newer librsvg
ONLY_FOR_ARCHS=	${RUST_ARCHS}

V=		3.0
DISTNAME=	gimp-${V}.4

.for i in gimp gimpbase gimpcolor gimpconfig gimpmath gimpmodule \
	gimpthumb gimpui gimpwidgets gimp-scriptfu
SHARED_LIBS +=  ${i}-3.0 0.0
.endfor

CATEGORIES=	graphics

SITES=		https://download.gimp.org/gimp/v${V}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/gimp/v${V}/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gimp.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_3 OpenEXR-3_3 X11 Xcursor
WANTLIB += Xext Xfixes Xmu Xpm aa appstream-glib archive babl-0.1
WANTLIB += bz2 c cairo cfitsio execinfo fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gegl-0.4 gexiv2 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gs gtk-3 harfbuzz
WANTLIB += heif intl jpeg json-glib-1.0 jxl jxl_threads lcms2
WANTLIB += lzma m mypaint openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png poppler-glib rsvg-2 tiff webp webpdemux webpmux
WANTLIB += wmf-0.2 wmflite-0.2 z

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# C++14
COMPILER=	base-clang ports-gcc

MODULES=	devel/meson \
		lang/python

# needed to get luajit version in patch-meson_build
MODULES +=	lang/lua
MODLUA_RUNDEP=	No
MODLUA_BUILDDEP=No
LUAJIT_V=	${MODLUA_VERSION:S/.//}
SUBST_VARS +=	LUAJIT_V

SUBST_VARS +=	V

COMMON_DEPENDS=	archivers/lzip/lzlib \
		archivers/libarchive \
		devel/desktop-file-utils \
		devel/iso-codes \
		graphics/jasper \
		graphics/mypaint-brushes \
		net/glib2-networking \
		print/poppler-data

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		devel/bison \
		devel/gettext,-tools \
		lang/luajit \
		lang/vala \
		misc/shared-mime-info \
		shells/bash \
		textproc/libxslt

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/xdg-utils \
		x11/gtk+4,-guic

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz \
		devel/appstream-glib \
		devel/glib2 \
		devel/gobject-introspection \
		devel/harfbuzz \
		devel/pango \
		graphics/aalib \
		graphics/babl \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		graphics/gegl04 \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/libgexiv2 \
		graphics/libjxl \
		graphics/libmypaint \
		graphics/libwmf \
		graphics/openexr \
		graphics/png \
		graphics/tiff \
		math/cfitsio \
		multimedia/libheif \
		print/ghostscript/gnu \
		print/poppler \
		x11/gnome/librsvg \
		x11/gtk+3

CONFIGURE_ENV=	CC_FOR_BUILD="${CC}" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# libmng has no pc file
CONFIGURE_ARGS=	-Dmng=disabled \
		-Dicc-directory=${LOCALBASE}/share/color/icc \
		-Dalsa=disabled \
		-Dlinux-input=disabled \
		-Dgudev=disabled \
		-Dappdata-test=disabled \
		-Dheadless-tests=disabled \
		-Djavascript=enabled \
		-Dcheck-update=no \
		-Denable-console-bin=true

# XXX disable; it does not build with newer gi-docgen
# WARNING: Unknown component in class link for Pango.Font: .Description
# Returns a [class@Pango.Font.Description] representing @font.
# ninja: build stopped: subcommand failed.
#BUILD_DEPENDS +=	textproc/gi-docgen
CONFIGURE_ARGS +=	-Dgi-docgen=disabled

# needs OpenMP
CONFIGURE_ARGS +=	-Dopenmp=disabled

# needs libiff
CONFIGURE_ARGS +=	-Dilbm=disabled

UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX

post-patch:
	${SUBST_CMD} ${WRKSRC}/extensions/goat-exercises/goat-exercise-lua.lua

# XXX remove once this GIMP version becomes the default;
# see:
# patch-libgimpwidgets_gimpwidgets-private_c
# patch-desktop_gimp_desktop_in_in
CONFIGURE_ARGS +=	-Denable-default-bin=disabled
pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgimpwidgets/gimpwidgets-private.c
	${SUBST_CMD} ${WRKSRC}/meson.build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/
	mv ${WRKINST}${SYSCONFDIR}/gimp ${PREFIX}/share/examples/
	${MODPY_COMPILEALL} ${PREFIX}/lib/gimp/${V}/plug-ins

# XXX remove once this GIMP version becomes the default;
# prevent conflicts with graphics/gimp/stable;
	cd ${PREFIX} && \
		mv share/applications/gimp{,-${V}}.desktop && \
		mv share/icons/hicolor/16x16/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/22x22/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/24x24/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/256x256/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/32x32/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/48x48/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/64x64/apps/gimp{,-${V}}.png && \
		mv share/icons/hicolor/scalable/apps/gimp{,-${V}}.svg && \
		mv share/metainfo/org.gimp{,-${V}}.GIMP.appdata.xml

.include <bsd.port.mk>
