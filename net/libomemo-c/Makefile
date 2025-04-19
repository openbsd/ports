COMMENT=	fork of libsignal-protocol-c adding support for OMEMO

VERSION=	0.5.1
DISTNAME=	libomemo-c-${VERSION}
CATEGORIES=	net

SHARED_LIBS+=	omemo-c                   0.0 # 0.0

HOMEPAGE=	https://dino.im/

SITES=		https://github.com/dino/libomemo-c/releases/download/v${VERSION}/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# GPLv3 only
PERMIT_PACKAGE=	Yes

WANTLIB+=	protobuf-c

MODULES=	devel/meson
BUILD_DEPENDS=	devel/check
LIB_DEPENDS=	devel/protobuf-c

.include <bsd.port.mk>
