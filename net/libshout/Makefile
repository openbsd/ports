# $OpenBSD: Makefile,v 1.30 2020/03/03 21:07:01 sthen Exp $

COMMENT=	library for communicating with an icecast server

DISTNAME=	libshout-2.4.3

SHARED_LIBS +=  shout                6.0      # 5.0

CATEGORIES=	net audio

HOMEPAGE=	https://icecast.org/

MAINTAINER=	Moritz Grimm <mgrimm@mrsserver.net>

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += crypto m ogg pthread speex ssl theora>=1 vorbis>=4

MASTER_SITES=	https://downloads.xiph.org/releases/libshout/

LIB_DEPENDS=	audio/libogg \
		audio/libvorbis \
		audio/speex \
		multimedia/libtheora

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

CONFIGURE_STYLE= gnu

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
