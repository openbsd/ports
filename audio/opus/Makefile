COMMENT=	IETF audio codec

VERSION=	1.6
DISTNAME=	opus-${VERSION}
SHARED_LIBS=	opus		1.6	# 11.0
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
# enable machine learning features and HD support
CONFIGURE_ARGS+=--enable-dred \
		--enable-osce \
		--enable-qext

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
