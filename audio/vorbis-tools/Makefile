# $OpenBSD: Makefile,v 1.14 2002/03/26 02:40:55 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"
DISTNAME=	vorbis-tools-1.0rc3
PKGNAME=	${DISTNAME}p1
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
		curl.2::net/curl \
		iconv.2::converters/libiconv \
		vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
