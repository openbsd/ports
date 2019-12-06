# $OpenBSD: Makefile,v 1.128 2019/12/06 09:31:13 sthen Exp $

COMMENT=	GNU Image Manipulation Program

DISTNAME =	gimp-2.10.14
REVISION =	0

.for i in gimp gimpbase gimpcolor gimpconfig gimpmath gimpmodule \
	gimpthumb gimpui gimpwidgets
SHARED_LIBS +=  $i-2.0 273.0
.endfor

CATEGORIES=	graphics

DIR=		gimp/v2.10
MASTER_SITES=	https://download.gimp.org/pub/${DIR}/ \
		https://www.mirrorservice.org/sites/ftp.gimp.org/pub/${DIR}/ \
		http://mirrors.go-parts.com/gimp/${DIR}/

HOMEPAGE=	http://www.gimp.org/

EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Half-2_4 ICE Iex-2_4 IexMath-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB += Imath-2_4 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xpm Xrandr Xrender Xt aa atk-1.0 avahi-client
WANTLIB += avahi-common babl-0.1 bz2 c cairo cairo-gobject cups
WANTLIB += curses dbus-1 execinfo exiv2 expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gegl-0.4 gexiv2
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gs gthread-2.0 gtk-x11-2.0 harfbuzz hogweed
WANTLIB += iconv idn2 ijs intl jbig2dec jpeg json-c json-glib-1.0
WANTLIB += lcms lcms2 lzma m mng mypaint-1.3 nettle openjp2 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png poppler poppler-glib rsvg-2 tasn1 tiff unistring
WANTLIB += webp webpdemux webpmux wmf-0.2 wmflite-0.2 xcb xcb-render
WANTLIB += xcb-shm xml2 z zstd

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	textproc/intltool \
		lang/python

BUILD_DEPENDS=	archivers/lzip/lzlib \
		graphics/jasper \
		x11/py-gtk2 \
		net/glib2-networking \
		devel/iso-codes \
		devel/desktop-file-utils \
		devel/appstream-glib \
		print/poppler-data \
		graphics/mypaint-brushes

LIB_DEPENDS=	graphics/gegl04>=0.4.4 \
		graphics/babl>=0.1.52 \
		devel/glib2>=2.54.2 \
		devel/libexecinfo \
		devel/pango>=1.29.4 \
		graphics/gdk-pixbuf2>=2.30.8 \
		x11/gtk+2>=2.24.10 \
		graphics/cairo>=1.12.2 \
		devel/harfbuzz>=0.9.19 \
		archivers/bzip2 \
		archivers/xz \
		graphics/libgexiv2 \
		graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/lcms2 \
		graphics/libmypaint \
		graphics/libmng \
		x11/gnome/librsvg \
		graphics/libwmf \
		graphics/aalib \
		print/ghostscript/gnu \
		graphics/openexr \
		print/poppler

RUN_DEPENDS=	archivers/lzip/lzlib \
		graphics/jasper \
		x11/py-gtk2 \
		net/glib2-networking \
		devel/iso-codes \
		devel/desktop-file-utils \
		devel/appstream-glib \
		print/poppler-data \
		graphics/mypaint-brushes \
		devel/xdg-utils \
		x11/gtk+3,-guic

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+= --enable-gimp-console \
		--with-pdbgen \
		--without-alsa \
		--without-libheif \
		--without-webkit

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/gimp/2.0/plug-ins

.include <bsd.port.mk>
