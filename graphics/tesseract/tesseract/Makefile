COMMENT=	OCR Engine developed at HP Labs

GH_PROJECT=	tesseract
REVISION=	0

SHARED_LIBS +=  tesseract            4.0

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender archive b2 bz2
WANTLIB += c cairo charset crypto curl expat ffi fontconfig freetype
WANTLIB += fribidi gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 harfbuzz iconv icudata icui18n icuuc intl
WANTLIB += jpeg lept lz4 lzma m nghttp2 openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png ssl tiff webp webpmux
WANTLIB += xcb xcb-render xcb-shm z zstd

# c++11: needed to build the training tools
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		archivers/libarchive \
			devel/pango \
			graphics/leptonica \
			net/curl \
			security/libb2 \
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
