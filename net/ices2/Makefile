# $OpenBSD: Makefile,v 1.8 2007/07/21 08:09:31 ajacoutot Exp $

COMMENT=	icecast source for streaming Ogg Vorbis

DISTNAME=	ices-2.0.1
PKGNAME=	${DISTNAME}p4
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/ices.php

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ogg pthread theora vorbis vorbisenc z

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-suffix=2
	
USE_LIBTOOL=	Yes
MODULES=	converters/libiconv
LIB_DEPENDS=	shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		xml2.>=9::textproc/libxml

SEPARATE_BUILD=	simple

pre-patch:
	@sed -e 's,oss,sun,g' < ${WRKSRC}/conf/ices-oss.xml \
		> ${WRKSRC}/conf/ices-sun.xml

.include <bsd.port.mk>
