# $OpenBSD: Makefile,v 1.4 2013/06/04 18:41:49 naddy Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.68

SHARED_LIBS +=  lept                 0.0      # 2.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gif jpeg m png tiff webp z

MASTER_SITES=	${HOMEPAGE}/source/

LIB_DEPENDS=	graphics/libwebp \
		graphics/libungif \
		graphics/tiff


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
