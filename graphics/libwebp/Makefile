# $OpenBSD: Makefile,v 1.26 2021/09/11 18:19:17 rsadowski Exp $

COMMENT=	Google WebP image format conversion tool

CATEGORIES=	graphics
GH_ACCOUNT=	webmproject
GH_PROJECT=	libwebp
GH_TAGNAME=	v1.2.1

SHARED_LIBS +=  webp                 4.3      # 6.0
SHARED_LIBS +=  webpdecoder          2.1      # 2.0
SHARED_LIBS +=  webpdemux            2.0      # 2.0
SHARED_LIBS +=  webpmux              2.0      # 2.0

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c gif jpeg lzma m png pthread tiff z zstd

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

CONFIGURE_STYLE=autoreconf

CONFIGURE_ARGS=	--enable-everything

# this will use libSDL to build stuff under extras otherwise
# (a static webp viewer which is more or less useless, and not
# even installed by default)
CONFIGURE_ARGS +=	--disable-sdl

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes

.include <bsd.port.mk>
