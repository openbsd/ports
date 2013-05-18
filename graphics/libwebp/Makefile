# $OpenBSD: Makefile,v 1.5 2013/05/18 18:02:05 brad Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.3.0

SHARED_LIBS=	webp		1.1	# 4.2

CATEGORIES=	graphics

HOMEPAGE=	http://code.google.com/p/webp/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c jpeg m png pthread tiff z

MASTER_SITES=	http://webp.googlecode.com/files/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/tiff

USE_GROFF=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
