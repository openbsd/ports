# $OpenBSD: Makefile,v 1.31 2019/07/12 20:48:28 sthen Exp $

COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.2
CATEGORIES=	net audio
REVISION=	5

HOMEPAGE=	https://icecast.org/ices/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv lzma m ogg pthread shout sndio speex theora vorbis
WANTLIB += vorbisenc xml2 z

MASTER_SITES=	https://downloads.xiph.org/releases/ices/

# Needs AC_PROG_LIBTOOL
BUILD_DEPENDS += 	devel/libtool \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=		audio/speex \
			converters/libiconv \
			net/libshout \
			textproc/libxml

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.9
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--program-suffix=2 \
			--disable-sun-audio

SEPARATE_BUILD=		Yes

post-extract:
	cp ${FILESDIR}/im_sndio.{c,h} ${WRKSRC}/src/
	cp ${FILESDIR}/ices-sndio.xml ${WRKSRC}/conf/

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal -I m4

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
