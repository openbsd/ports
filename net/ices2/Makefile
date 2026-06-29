COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.3
CATEGORIES=	net audio

HOMEPAGE=	https://icecast.org/ices/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m ogg pthread shout sndio speex theora vorbis
WANTLIB += vorbisenc xml2 z crypto ssl

SITES=		https://downloads.xiph.org/releases/ices/

LIB_DEPENDS=		audio/speex \
			converters/libiconv \
			net/libshout \
			textproc/libxml

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--program-suffix=2 \
			--disable-sun-audio

SEPARATE_BUILD=		Yes

post-extract:
	cp ${FILESDIR}/im_sndio.{c,h} ${WRKSRC}/src/
	cp ${FILESDIR}/ices-sndio.xml ${WRKSRC}/conf/

.include <bsd.port.mk>
