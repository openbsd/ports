# $OpenBSD: Makefile,v 1.1.1.1 2007/01/16 13:32:58 steven Exp $

COMMENT=	"streaming source client that uses external en-/decoders"

DISTNAME=	ezstream-0.2.1
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream.php

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c iconv m ogg pthread theora vorbis vorbisfile z

MASTER_SITES=	http://downloads.xiph.org/releases/ezstream/

LIB_DEPENDS=	shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		xml2.>=9::textproc/libxml

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ezstream
	${INSTALL_DATA} ${WRKSRC}/conf/*.xml ${PREFIX}/share/examples/ezstream
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ezstream
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ezstream

.include <bsd.port.mk>
