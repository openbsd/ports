# $OpenBSD: Makefile,v 1.7 2013/09/25 07:58:40 sthen Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.68
REVISION=	1

SHARED_LIBS +=  lept                 0.0      # 2.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gif jpeg m png tiff webp z

MASTER_SITES=	${HOMEPAGE}/source/
LIBM_CHECK =	powf expf

LIB_DEPENDS=	graphics/libwebp \
		graphics/giflib \
		graphics/tiff

# for non-shared archs...
LIB_DEPENDS +=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
