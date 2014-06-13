# $OpenBSD: Makefile,v 1.9 2014/06/13 07:37:27 sthen Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.70

SHARED_LIBS +=  lept                 2.0      # 4.1

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gif jpeg m png pthread tiff webp z

MASTER_SITES=	${HOMEPAGE}/source/
LIBM_CHECK =	powf expf

LIB_DEPENDS=	graphics/libwebp \
		graphics/giflib \
		graphics/tiff
TEST_DEPENDS=	shells/bash \
		math/gnuplot

# for non-shared archs...
LIB_DEPENDS+=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-test:
	@${SUBST_CMD} ${WRKSRC}/prog/reg_wrapper.sh

.include <bsd.port.mk>
