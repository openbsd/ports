# $OpenBSD: Makefile,v 1.14 2016/03/11 19:59:14 naddy Exp $

COMMENT=	image processing and analysis library

DISTNAME=	leptonica-1.72
REVISION=	0

SHARED_LIBS +=  lept                 2.1      # 4.3

CATEGORIES=	graphics

HOMEPAGE=	http://www.leptonica.com/

# BSD-like (see leptonica-license.txt in WRKSRC)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gif jpeg m openjp2 png pthread tiff webp z

MASTER_SITES=	${HOMEPAGE}/source/

LIB_DEPENDS=	graphics/libwebp \
		graphics/giflib \
		graphics/openjp2 \
		graphics/tiff
TEST_DEPENDS=	shells/bash \
		math/gnuplot

# for non-shared archs...
LIB_DEPENDS+=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.68
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -lz"

.include <bsd.port.mk>
