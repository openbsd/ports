# $OpenBSD: Makefile,v 1.12 2002/01/21 15:53:13 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"
DISTNAME=	vorbis-tools-1.0rc3
CATEGORIES=    	audio
NEED_VERSION=	1.457
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xiph.org/ogg/vorbis/download/ \
		http://www.vorbis.com/files/rc3/unix/ \
		http://www.oddsock.org/vorbisrc3/files/rc3/unix/

LIB_DEPENDS=	ao.3::audio/libao \
		ogg.3::audio/libogg \
		vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis \
		curl.2::net/curl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ao=${LOCALBASE} \
		--with-ogg=${LOCALBASE} \
		--with-vorbis=${LOCALBASE} \
		--with-curl=${LOCALBASE}

.include <bsd.port.mk>
