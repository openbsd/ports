# $OpenBSD: Makefile,v 1.18 2017/12/04 11:52:04 ajacoutot Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.74.4
REVISION=	0

SHARED_LIBS +=  lept                 2.2      # 5.1

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gif jpeg m openjp2 png tiff webp z

MASTER_SITES=	${HOMEPAGE}/source/

LIB_DEPENDS=	graphics/libwebp \
		graphics/giflib \
		graphics/openjp2 \
		graphics/tiff
TEST_DEPENDS=	shells/bash \
		math/gnuplot

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"

.include <bsd.port.mk>
