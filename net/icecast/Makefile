# $OpenBSD: Makefile,v 1.53 2014/05/28 13:37:25 gonzalo Exp $

COMMENT=	server for streaming various media formats

DISTNAME=	icecast-2.4.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c curl>=2 crypto idn m ogg pthread speex>=3 ssl theora>=1
WANTLIB +=	vorbis>=3 xml2 xslt>=3 z

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	net/curl \
		textproc/libxslt \
		audio/libvorbis \
		audio/speex \
		multimedia/libtheora

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
