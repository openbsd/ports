# $OpenBSD: Makefile,v 1.11 2015/11/20 13:41:09 ajacoutot Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.4.4
CATEGORIES=	graphics
MASTER_SITES=	http://downloads.webmproject.org/releases/webp/

SHARED_LIBS +=  webp                 2.1      # 5.4
SHARED_LIBS +=  webpdecoder          0.1      # 1.4
SHARED_LIBS +=  webpmux              0.1      # 1.2
SHARED_LIBS +=  webpdemux            0.0      # 1.2

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c gif jpeg m png pthread tiff z

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-everything
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
