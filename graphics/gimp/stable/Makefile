# $OpenBSD: Makefile,v 1.135 2020/05/18 15:42:59 sthen Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME =	gimp-2.10.18
REVISION =	3

.for i in gimp gimpbase gimpcolor gimpconfig gimpmath gimpmodule \
	gimpthumb gimpui gimpwidgets
SHARED_LIBS +=  $i-2.0 273.0
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
WANTLIB += Half-2_5 ICE Iex-2_5 IexMath-2_5 IlmImf-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xpm Xrandr Xrender Xt aa atk-1.0 avahi-client
WANTLIB += avahi-common babl-0.1 bz2 c cairo cairo-gobject cups
WANTLIB += curses dbus-1 de265 execinfo exiv2 expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4
WANTLIB += gexiv2 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gs gtk-x11-2.0 harfbuzz heif hogweed iconv
WANTLIB += idn2 ijs intl jbig2dec jpeg json-c json-glib-1.0 lcms
WANTLIB += lcms2 lzma m mng mypaint nettle openjp2 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png poppler poppler-glib rsvg-2 tasn1 tiff unistring
WANTLIB += webp webpdemux webpmux wmf-0.2 wmflite-0.2 x265 xcb
WANTLIB += xcb-render xcb-shm xml2 z zstd

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# C++14
COMPILER=	base-clang ports-gcc

MODULES=	textproc/intltool \
		lang/python

COMMON_DEPENDS=	archivers/lzip/lzlib \
		devel/appstream-glib \
		devel/desktop-file-utils \
		devel/iso-codes \
		graphics/jasper \
		graphics/mypaint-brushes \
		net/glib2-networking \
		print/poppler-data \
		x11/py-gtk2

BUILD_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/xdg-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz \
		devel/glib2>=2.54.2 \
		devel/harfbuzz>=0.9.19 \
		devel/libexecinfo \
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

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+= \
		--disable-check-update \
		--enable-gimp-console \
		--with-pdbgen \
		--without-alsa \
		--without-webkit

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/gimp/2.0/plug-ins

.include <bsd.port.mk>
