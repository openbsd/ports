# $OpenBSD: Makefile,v 1.19 2013/03/11 11:35:47 espie Exp $

COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.1
REVISION=	7
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/ices.php

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	--program-suffix=2 --disable-sun-audio

USE_LIBTOOL =	Yes
# Needs AC_PROG_LIBTOOL	
BUILD_DEPENDS += devel/libtool
MODULES=	converters/libiconv
WANTLIB=	c m ogg pthread sndio theora vorbis vorbisenc z \
		shout>=3 speex>=4 xml2>=9
LIB_DEPENDS=	net/libshout \
		audio/speex \
		textproc/libxml

SEPARATE_BUILD=	Yes

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
