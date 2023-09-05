COMMENT=	patent-free speech codec

DISTNAME=	speex-1.2.1
CATEGORIES=	audio
HOMEPAGE=	https://speex.org/
SHARED_LIBS=	speex	8.0	# 6.2

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/speex/

LIB_DEPENDS=	audio/libogg \
		audio/speexdsp
WANTLIB=	c m ogg sndio speexdsp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO"
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
