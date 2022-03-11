COMMENT=		image quantization library

GH_ACCOUNT=		ImageOptim
GH_PROJECT=		libimagequant
GH_TAGNAME=		2.13.1

SHARED_LIBS += imagequant 0.0 # 0

CATEGORIES=		graphics devel

HOMEPAGE=		https://pngquant.org/lib/

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += m

USE_GMAKE=		Yes

BUILD_DEPENDS=		shells/bash

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--disable-sse

MAKE_FLAGS=		SOVER=${LIBimagequant_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
