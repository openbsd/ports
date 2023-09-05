COMMENT=	speech processing DSP library

DISTNAME=	speexdsp-1.2.1
CATEGORIES=	audio
HOMEPAGE=	https://speex.org/
SHARED_LIBS=	speexdsp	1.1	# 6.2

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/speex/

WANTLIB=	m

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
