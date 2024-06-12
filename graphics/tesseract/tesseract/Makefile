COMMENT=	OCR Engine developed at HP Labs

GH_PROJECT=	tesseract
GH_TAGNAME=	5.4.1

SHARED_LIBS +=  tesseract            7.0      # 5.4

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xau Xdmcp Xext Xrender archive b2 bz2 c cairo crypto
WANTLIB += curl expat ffi fontconfig freetype fribidi gif gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 harfbuzz
WANTLIB += iconv icudata icui18n icuuc intl jpeg leptonica lz4
WANTLIB += lzma m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png sharpyuv ssl tiff webp webpmux xcb xcb-render
WANTLIB += xcb-shm z zstd

# c++11: needed to build the training tools
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

LIB_DEPENDS=		archivers/libarchive \
			devel/pango \
			graphics/leptonica>=1.83.0 \
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
