# $OpenBSD: Makefile,v 1.60 2017/03/17 07:15:01 ajacoutot Exp $

COMMENT=	server for streaming various media formats
CATEGORIES=	net audio

DISTNAME=	icecast-2.4.3
REVISION=	0

HOMEPAGE=	http://www.icecast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/

WANTLIB +=	c curl>=2 crypto lzma m ogg pthread speex>=3
WANTLIB +=	ssl theora>=1 vorbis>=3 xml2 xslt>=3 z nghttp2

MODULES=	devel/gettext

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
