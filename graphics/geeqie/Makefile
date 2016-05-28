# $OpenBSD: Makefile,v 1.13 2016/05/28 13:59:51 sthen Exp $

COMMENT=		lightweight Gtk+2 based image viewer

DISTNAME=		geeqie-1.3
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		graphics
EPOCH=			0

HOMEPAGE=		http://geeqie.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject exiv2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 intl
WANTLIB += jpeg lcms2 m pango-1.0 pangocairo-1.0 pthread stdc++
WANTLIB += tiff

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-doxygen-doc \
			--disable-lirc \
			--disable-lua \
			--disable-gps \
			--with-htmldir=${PREFIX}/share/doc/geeqie \
			--with-readmedir=${PREFIX}/share/doc/geeqie

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
MAKE_ENV=		MKDIR_P='mkdir -p'

pre-configure:
	cd ${WRKSRC} && \
		NOCONFIGURE=1 \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
