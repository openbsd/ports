# $OpenBSD: Makefile,v 1.7 2014/06/24 15:05:46 brad Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.4.0
CATEGORIES=	graphics
MASTER_SITES=	https://webp.googlecode.com/files/

SHARED_LIBS=	webp		2.0 \
		webpdecoder	0.0 \
		webpdemux	0.0 \
		webpmux		0.0

HOMEPAGE=	https://code.google.com/p/webp/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c gif jpeg m png pthread tiff z

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

USE_GROFF=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-everything
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
