COMMENT=	IETF audio codec

VERSION=	1.4
DISTNAME=	opus-${VERSION}
SHARED_LIBS=	opus		1.4	# 9.0
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/opus/ \
		https://github.com/xiph/opus/releases/download/v${VERSION}/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc	# requires doxygen

.include <bsd.port.mk>
