# $OpenBSD: Makefile,v 1.48 2012/03/29 13:38:48 sthen Exp $

COMMENT=	server for streaming various media formats

DISTNAME=	icecast-2.3.2
REVISION=	8
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c curl>=2 crypto idn m ogg pthread speex>=3 ssl theora>=1
WANTLIB +=	vorbis>=3 xml2 xslt>=3 z

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir=/var --with-theora=${LOCALBASE}
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
