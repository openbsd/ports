# $OpenBSD: Makefile,v 1.8 2010/11/19 22:31:35 espie Exp $

COMMENT=	pipe an Ogg stream to an Icecast server

DISTNAME=	oggfwd-0.2
REVISION=	1
CATEGORIES=	net multimedia

HOMEPAGE=	http://v2v.cc/~j/ffmpeg2theora/oggfwd/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ogg pthread theora vorbis shout>=5 speex>=4

MASTER_SITES=	http://v2v.cc/~j/oggfwd/

LIB_DEPENDS=	net/libshout \
		audio/speex

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
