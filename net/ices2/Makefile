# $OpenBSD: Makefile,v 1.9 2010/04/23 05:54:26 jakemsr Exp $

COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.1
PKGNAME=	${DISTNAME}p5
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/ices.php

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ogg pthread sndio theora vorbis vorbisenc z

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.8
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	--program-suffix=2 --disable-sun-audio
	
USE_LIBTOOL=	Yes
MODULES=	converters/libiconv
LIB_DEPENDS=	shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		xml2.>=9::textproc/libxml

SEPARATE_BUILD=	simple

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
