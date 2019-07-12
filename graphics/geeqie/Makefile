# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:59 sthen Exp $

COMMENT=		lightweight Gtk+3 based image viewer

DISTNAME=		geeqie-1.4
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		graphics
EPOCH=			0
REVISION=		1

HOMEPAGE=		http://geeqie.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject exiv2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 intl
WANTLIB += jpeg lcms2 m pango-1.0 pangocairo-1.0 pthread ${COMPILER_LIBCXX}
WANTLIB += tiff

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://geeqie.org/

MODULES=		textproc/intltool

BUILD_DEPENDS=		x11/gnome/doc-utils

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/exiftran

LIB_DEPENDS=		graphics/exiv2 \
			graphics/lcms2 \
			x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-doxygen-doc \
			--disable-lirc \
			--disable-lua \
			--disable-ffmpegthumbnailer \
			--disable-gpu-accel \
			--enable-gtk3 \
			--with-htmldir=${PREFIX}/share/doc/geeqie \
			--with-readmedir=${PREFIX}/share/doc/geeqie

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
AUTORECONF=		./autogen.sh
MAKE_ENV=		MKDIR_P='mkdir -p'

.include <bsd.port.mk>
