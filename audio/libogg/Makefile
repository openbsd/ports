COMMENT=	Ogg bitstream library

VERSION=	1.3.5
DISTNAME=	libogg-${VERSION}
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/ogg/
SHARED_LIBS=	ogg	6.2	# 8.5

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/ogg/ \
		https://github.com/xiph/ogg/releases/download/v${VERSION}/
EXTRACT_SUFX=	.tar.xz

CONFIGURE_STYLE=gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
