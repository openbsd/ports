# $OpenBSD: Makefile,v 1.68 2020/06/09 07:14:45 jasper Exp $

COMMENT=	server for streaming various media formats
CATEGORIES=	net audio

DISTNAME=	icecast-2.4.4
REVISION=	0

HOMEPAGE=	https://icecast.org/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl>=2 iconv intl lzma m nghttp2 ogg pthread
WANTLIB += speex>=3 ssl theora>=1 vorbis>=3 xml2 xslt>=3 z

MASTER_SITES=	https://downloads.xiph.org/releases/icecast/


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	archivers/xz \
		audio/libvorbis \
		audio/speex \
		multimedia/libtheora \
		net/curl \
		textproc/libxslt

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
