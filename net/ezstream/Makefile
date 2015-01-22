# $OpenBSD: Makefile,v 1.18 2015/01/22 21:03:02 landry Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-0.6.0
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
