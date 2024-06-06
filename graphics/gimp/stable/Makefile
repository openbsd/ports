COMMENT=	GNU Image Manipulation Program

DISTNAME =	gimp-2.10.38
PKGSPEC =	gimp->=2,<2.99

.for i in gimp gimpbase gimpcolor gimpconfig gimpmath gimpmodule \
	gimpthumb gimpui gimpwidgets
SHARED_LIBS +=  $i-2.0 275.0
.endfor

CATEGORIES=	graphics

DIR=		gimp/v2.10
SITES=		https://download.gimp.org/pub/${DIR}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/pub/${DIR}/

HOMEPAGE=	https://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += brotlicommon brotlidec brotlienc hwy jxl jxl_threads
WANTLIB += ICE Iex-3_2 IlmThread-3_2 Imath-3_1 OpenEXR-3_2 OpenEXRCore-3_2
WANTLIB += OpenEXRUtil-3_2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt aa aom atk-1.0 avahi-client avahi-common babl-0.1
WANTLIB += bz2 c cairo cairo-gobject crypto cups curses
WANTLIB += dbus-1 de265 execinfo exiv2 expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gexiv2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gs gtk-x11-2.0 harfbuzz heif iconv idn ijs intl jbig2dec
WANTLIB += jpeg json-c json-glib-1.0 lcms lcms2 lzma m mng mypaint
WANTLIB += openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 paper
WANTLIB += pcre2-8 pixman-1 png poppler poppler-glib rsvg-2 ssl tiff
WANTLIB += webp webpdemux webpmux wmf-0.2 wmflite-0.2 x265 xcb
WANTLIB += xcb-render xcb-shm xml2 z zstd sharpyuv deflate
WANTLIB += INIReader inih jxl_cms

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# C++14
COMPILER=	base-clang ports-gcc

MODULES=	textproc/intltool \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

COMMON_DEPENDS=	archivers/lzip/lzlib \
		devel/desktop-file-utils \
		devel/iso-codes \
		graphics/jasper \
		graphics/mypaint-brushes \
		net/glib2-networking \
		print/poppler-data \
		x11/py-gtk2

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		devel/appstream-glib

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/xdg-utils \
		x11/gtk+4,-guic

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz \
		devel/glib2>=2.54.2 \
		devel/harfbuzz>=0.9.19 \
		devel/pango>=1.29.4 \
		graphics/aalib \
		graphics/babl>=0.1.52 \
		graphics/cairo>=1.12.2 \
		graphics/gdk-pixbuf2>=2.30.8 \
		graphics/gegl04>=0.4.4 \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/libgexiv2 \
		graphics/libjxl \
		graphics/libmng \
		graphics/libmypaint>=1.5.0 \
		graphics/libwmf \
		graphics/openexr \
		graphics/png \
		graphics/tiff \
		multimedia/libheif \
		print/ghostscript/gnu \
		print/poppler \
		x11/gnome/librsvg \
		x11/gtk+2>=2.24.10

CONFIGURE_ENV=	CC_FOR_BUILD="${CC}" \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+= \
		--disable-check-update \
		--enable-gimp-console \
		--with-pdbgen \
		--without-linux-input \
		--without-alsa \
		--without-webkit

UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX -i MODPY_BIN_SUFFIX

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/lib/gimp/2.0/plug-ins

.include <bsd.port.mk>
