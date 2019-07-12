# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:01 sthen Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.78.0
REVISION=	0

SHARED_LIBS +=  lept                 3.0      # 5.3

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE=	Yes

WANTLIB += c gif jpeg m openjp2 png pthread tiff webp z

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

# conflict with x11/kde/libs3,-main:/usr/local/bin/imagetops
post-install:
	mv ${PREFIX}/bin/imagetops ${PREFIX}/bin/imagetops.leptonica

.include <bsd.port.mk>
