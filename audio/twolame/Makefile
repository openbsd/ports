COMMENT=	optimised MPEG Audio Layer 2 (MP2) encoder

DISTNAME=	twolame-0.4.0
REVISION=	0
SHARED_LIBS +=	twolame              1.0      # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://www.twolame.org/

MAINTAINER =	Martin Ziemer <horrad@horrad.de>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=twolame/}

WANTLIB += FLAC c m mp3lame mpg123 ogg opus pthread sndfile vorbis
WANTLIB += vorbisenc

LIB_DEPENDS=	audio/libsndfile

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
