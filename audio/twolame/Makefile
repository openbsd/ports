# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT=	optimised MPEG Audio Layer 2 (MP2) encoder

DISTNAME=	twolame-0.3.13
REVISION=	0
SHARED_LIBS +=  twolame              0.0      # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://www.twolame.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=twolame/}

WANTLIB=	c m sndfile FLAC ogg vorbis vorbisenc

LIB_DEPENDS=	audio/libsndfile

CONFIGURE_STYLE=gnu


.include <bsd.port.mk>
