COMMENT=	GNU Image Manipulation Program

DISTNAME =	gimp-2.10.30
REVISION =	0

.for i in gimp gimpbase gimpcolor gimpconfig gimpmath gimpmodule \
	gimpthumb gimpui gimpwidgets
SHARED_LIBS +=  $i-2.0 275.0
.endfor

CATEGORIES=	graphics

DIR=		gimp/v2.10
MASTER_SITES=	https://download.gimp.org/pub/${DIR}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/pub/${DIR}/ \
		http://mirrors.go-parts.com/gimp/${DIR}/

HOMEPAGE=	https://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE Iex-3_1 IlmThread-3_1 OpenEXR-3_1 OpenEXRCore-3_1 OpenEXRUtil-3_1
WANTLIB += Imath-3_1 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xau Xdmcp Xi Xinerama Xmu Xpm Xrandr Xrender Xt aa aom atk-1.0
WANTLIB += avahi-client avahi-common babl-0.1 bz2 c cairo cairo-gobject
WANTLIB += cups curses dav1d dbus-1 de265 execinfo exiv2 expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gegl-0.4 gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 graphite2 gs gtk-x11-2.0 harfbuzz heif
WANTLIB += hogweed iconv idn idn2 ijs intl jbig2dec jpeg json-c json-glib-1.0
WANTLIB += lcms lcms2 lzma m mng mypaint nettle openjp2 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 paper pcre pixman-1
WANTLIB += png poppler poppler-glib rsvg-2 tasn1 tiff unistring
WANTLIB += webp webpdemux webpmux wmf-0.2 wmflite-0.2 x265 xcb
WANTLIB += xcb-render xcb-shm xml2 z zstd

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
		x11/gtk+3,-guic

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
		--without-alsa \
		--without-webkit

UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX -i MODPY_BIN_SUFFIX

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/gimp/2.0/plug-ins

.include <bsd.port.mk>
