COMMENT=	ZBar barcode reader

GH_ACCOUNT=	mchehab
GH_PROJECT=	zbar
GH_TAGNAME=	0.23.90
REVISION=	0

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
WANTLIB += SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt Xv aom atk-1.0 atk-bridge-2.0
WANTLIB += bz2 c cairo cairo-gobject dav1d de265 djvulibre epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz heif iconv intl jasper jbig
WANTLIB += jpeg lcms2 lzma m openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png raw_r tiff util webp
WANTLIB += webpdemux webpmux x265 xcb xcb-render xcb-shm xml2
WANTLIB += z zstd

MODULES=	lang/python

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
# upstream ships pregenerated manuals, but doesn't install them unless
# xmlto is detected. this avoids having to depend on xmlto at build time.
CONFIGURE_ENV=		XMLTO=true

TEST_DEPENDS=	devel/argp-standalone \
		sysutils/coreutils
TEST_FLAGS=	LIBS="-largp -lpthread"

pre-test:
	ln -fs ${LOCALBASE}/bin/gsha1sum ${WRKDIR}/bin/sha1sum

.include <bsd.port.mk>
