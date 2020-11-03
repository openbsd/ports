#	$OpenBSD: Makefile,v 1.29 2020/11/03 23:18:10 jca Exp $

COMMENT=	ZBar barcode reader

GH_ACCOUNT=	mchehab
GH_PROJECT=	zbar
GH_TAGNAME=	0.23.1

SHARED_LIBS=	zbar	0.1 \
		zbargtk	0.1

CATEGORIES=	graphics

HOMEPAGE=	https://github.com/mchehab/zbar

MASTER_SITES=	https://linuxtv.org/downloads/zbar/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xv atk-1.0 atk-bridge-2.0 bz2 c cairo
WANTLIB += cairo-gobject djvulibre epoxy expat ffi fftw3
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz
WANTLIB += iconv intl jasper jbig jpeg lcms2 lzma m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png raw_r
WANTLIB += tiff webp webpdemux webpmux xcb xcb-render xcb-shm
WANTLIB += xml2 z zstd

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	graphics/ImageMagick \
		x11/gtk+3

BUILD_DEPENDS=	devel/gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gtk=gtk3 \
			--with-python=python3 \
			--disable-video \
			--without-qt \
			--without-dbus
USE_GMAKE=		Yes

.include <bsd.port.mk>
