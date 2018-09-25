# $OpenBSD: Makefile,v 1.19 2018/09/25 07:01:04 ajacoutot Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-1.0.0
CATEGORIES=	graphics
MASTER_SITES=	http://downloads.webmproject.org/releases/webp/

SHARED_LIBS +=  webp                 4.0      # 6.0
SHARED_LIBS +=  webpdecoder          2.0      # 2.0
SHARED_LIBS +=  webpdemux            2.0      # 2.0
SHARED_LIBS +=  webpmux              2.0      # 2.0

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c gif jpeg m png pthread tiff z

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-everything \
		--disable-sdl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
