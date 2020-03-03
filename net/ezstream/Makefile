# $OpenBSD: Makefile,v 1.23 2020/03/03 21:11:40 sthen Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-1.0.1
CATEGORIES=	net multimedia

HOMEPAGE=	https://icecast.org/ezstream/

MAINTAINER=	Moritz Grimm <mgrimm@mrsserver.net>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} c crypto iconv lzma m ogg shout \
		speex ssl tag tag_c theora vorbis xml2 z

MASTER_SITES=	https://downloads.xiph.org/releases/ezstream/

BUILD_DEPENDS=	devel/check
LIB_DEPENDS=	converters/libiconv \
		net/libshout \
		audio/speex \
		textproc/libxml \
		audio/taglib

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-taglib="${LOCALBASE}"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
