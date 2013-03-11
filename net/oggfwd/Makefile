# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:50 espie Exp $

COMMENT=	pipe an Ogg stream to an Icecast server

DISTNAME=	oggfwd-0.2
REVISION=	2
CATEGORIES=	net multimedia

HOMEPAGE=	http://v2v.cc/~j/ffmpeg2theora/oggfwd/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ogg pthread theora vorbis shout>=5 speex>=4

MASTER_SITES=	http://v2v.cc/~j/oggfwd/

LIB_DEPENDS=	net/libshout \
		audio/speex

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
