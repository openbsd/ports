COMMENT=	Google WebP image format conversion tool

GH_ACCOUNT=	webmproject
GH_PROJECT=	libwebp
GH_TAGNAME=	v1.5.0
CATEGORIES=	graphics
REVISION=	0

SHARED_LIBS +=  sharpyuv             0.1      # 0.0
SHARED_LIBS +=  webp                 4.3      # 6.0
SHARED_LIBS +=  webpdecoder          2.1      # 2.0
SHARED_LIBS +=  webpdemux            2.0      # 2.0
SHARED_LIBS +=  webpmux              2.1      # 2.0

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Lerc c gif jpeg lzma m png tiff
WANTLIB += z zstd

LIB_DEPENDS =	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

# this will use libSDL to build stuff under extras otherwise
# (a static webp viewer which is more or less useless, and not
# even installed by default)
CONFIGURE_ARGS+=	--disable-gl
CONFIGURE_ARGS+=	--disable-sdl

CONFIGURE_ARGS+=	--enable-libwebpdecoder
CONFIGURE_ARGS+=	--enable-libwebpextras
CONFIGURE_ARGS+=	--enable-libwebpdemux
CONFIGURE_ARGS+=	--enable-libwebpmux

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes

.include <bsd.port.mk>
