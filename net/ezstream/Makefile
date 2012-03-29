# $OpenBSD: Makefile,v 1.16 2012/03/29 13:38:48 sthen Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-0.5.6
REVISION=	1
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream.php

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ogg pthread theora vorbis \
		shout>=3 speex>=4 xml2>=9 tag_c>=1

MASTER_SITES=	http://downloads.xiph.org/releases/ezstream/

MODULES=	converters/libiconv

LIB_DEPENDS=	net/libshout \
		audio/speex \
		textproc/libxml \
		audio/taglib

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-taglib="${LOCALBASE}"

.include <bsd.port.mk>
