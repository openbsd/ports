# $OpenBSD: Makefile,v 1.63 2018/09/02 17:33:41 naddy Exp $

COMMENT=	server for streaming various media formats
CATEGORIES=	net audio

DISTNAME=	icecast-2.4.3
REVISION=	3

HOMEPAGE=	https://icecast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c crypto curl>=2 iconv intl lzma m nghttp2 ogg pthread
WANTLIB += speex>=3 ssl theora>=1 vorbis>=3 xml2 xslt>=3 z

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/


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
