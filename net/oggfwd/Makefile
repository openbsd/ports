# $OpenBSD: Makefile,v 1.4 2009/06/19 09:24:14 sthen Exp $

COMMENT=	pipe an Ogg stream to an Icecast server

DISTNAME=	oggfwd-0.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net multimedia

HOMEPAGE=	http://v2v.cc/~j/ffmpeg2theora/oggfwd/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ogg pthread theora vorbis

MASTER_SITES=	http://v2v.cc/~j/oggfwd/

LIB_DEPENDS=	shout.>=5::net/libshout \
		speex.>=4::audio/speex

NO_REGRESS=	Yes

.include <bsd.port.mk>
