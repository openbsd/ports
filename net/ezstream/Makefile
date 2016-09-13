# $OpenBSD: Makefile,v 1.19 2016/09/13 16:12:14 naddy Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-0.6.0
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv m ogg pthread theora vorbis \
		shout>=3 speex>=4 xml2>=9 tag_c>=1

MASTER_SITES=	http://downloads.xiph.org/releases/ezstream/

LIB_DEPENDS=	converters/libiconv \
		net/libshout \
		audio/speex \
		textproc/libxml \
		audio/taglib

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-taglib="${LOCALBASE}"

.include <bsd.port.mk>
