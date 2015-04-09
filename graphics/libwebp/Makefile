# $OpenBSD: Makefile,v 1.10 2015/04/09 20:47:16 sthen Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.4.3
CATEGORIES=	graphics
MASTER_SITES=	http://downloads.webmproject.org/releases/webp/

SHARED_LIBS=	webp		2.1 \
		webpdecoder	0.1 \
		webpdemux	0.0 \
		webpmux		0.1

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
