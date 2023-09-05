COMMENT=	optimised MPEG Audio Layer 2 (MP2) encoder

DISTNAME=	twolame-0.4.0
SHARED_LIBS +=	twolame              1.0      # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://www.twolame.org/

MAINTAINER =	Martin Ziemer <horrad@horrad.de>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=twolame/}

WANTLIB=	c m sndfile FLAC ogg vorbis vorbisenc opus

LIB_DEPENDS=	audio/libsndfile

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
