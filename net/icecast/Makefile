# $OpenBSD: Makefile,v 1.51 2013/03/11 11:35:47 espie Exp $

COMMENT=	server for streaming various media formats

DISTNAME=	icecast-2.3.3
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

USE_LIBTOOL=	Yes
LIB_DEPENDS =	net/curl \
		textproc/libxslt \
		audio/libvorbis \
		audio/speex \
		multimedia/libtheora

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
