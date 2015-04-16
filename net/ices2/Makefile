# $OpenBSD: Makefile,v 1.22 2015/04/16 11:50:48 jasper Exp $

COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.2
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/ices.php

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

WANTLIB += c m ogg pthread shout sndio speex theora vorbis vorbisenc
WANTLIB += xml2 z

MODULES=		converters/libiconv

# Needs AC_PROG_LIBTOOL
BUILD_DEPENDS += 	devel/libtool \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=		audio/speex \
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
