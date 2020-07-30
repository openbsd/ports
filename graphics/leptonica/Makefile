# $OpenBSD: Makefile,v 1.23 2020/07/30 08:13:33 jasper Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.80.0

SHARED_LIBS +=  lept                 4.0      # 5.3

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.org/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE=	Yes

WANTLIB += c gif jpeg m openjp2 png tiff webp webpmux z

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
