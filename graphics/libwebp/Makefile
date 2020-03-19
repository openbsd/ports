# $OpenBSD: Makefile,v 1.22 2020/03/19 22:23:47 ajacoutot Exp $

COMMENT=	Google WebP image format conversion tool

VER=		1.1.0
CATEGORIES=	graphics
GH_ACCOUNT=	webmproject
GH_PROJECT=	libwebp
GH_TAGNAME=	v${VER}

SHARED_LIBS +=  webp                 4.2      # 6.0
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
CONFIGURE_ARGS=	--enable-everything \
		--disable-sdl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
