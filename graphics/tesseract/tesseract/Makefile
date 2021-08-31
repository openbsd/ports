# $OpenBSD: Makefile,v 1.21 2021/08/31 12:26:42 ajacoutot Exp $

COMMENT=	OCR Engine developed at HP Labs

GH_PROJECT=	tesseract

SHARED_LIBS +=  tesseract            4.0

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender bz2 c cairo charset
WANTLIB += crypto expat ffi fontconfig freetype fribidi gif gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 harfbuzz
WANTLIB += iconv icudata icui18n icuuc intl jpeg lept lz4 lzma
WANTLIB += m openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png ssl tiff webp webpmux xcb xcb-render xcb-shm
WANTLIB += z zstd

# c++11: needed to build the training tools
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		devel/pango \
			graphics/leptonica \
			textproc/icu4c

RUN_DEPENDS=		graphics/tesseract/tessdata,-main

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET=		all training
INSTALL_TARGET=		install training-install

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	textproc/asciidoc

.include <bsd.port.mk>
