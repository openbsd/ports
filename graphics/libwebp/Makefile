# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT=	Google WebP image format conversion tool

DISTNAME=	libwebp-0.2.1

SHARED_LIBS=	webp		1.0	# 4.1

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
