# $OpenBSD: Makefile,v 1.13 2011/01/16 20:01:22 naddy Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-0.5.6
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream.php

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c iconv m ogg pthread theora vorbis \
		shout>=3 speex>=4 xml2>=9 tag_c>=1

MASTER_SITES=	http://downloads.xiph.org/releases/ezstream/

LIB_DEPENDS=	net/libshout \
		audio/speex \
		textproc/libxml \
		audio/taglib

SEPARATE_BUILD=	simple

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-taglib="${LOCALBASE}"

.include <bsd.port.mk>
