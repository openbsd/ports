COMMENT=	IETF audio codec

VERSION=	1.5.2
DISTNAME=	opus-${VERSION}
REVISION=	0
SHARED_LIBS=	opus		1.5	# 10.1
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc	# requires doxygen
# enable machine learning features
CONFIGURE_ARGS+=--enable-dred \
		--enable-osce

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
