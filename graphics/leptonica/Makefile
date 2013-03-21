# $OpenBSD: Makefile,v 1.3 2013/03/21 08:45:18 ajacoutot Exp $

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
