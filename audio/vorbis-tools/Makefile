# $OpenBSD: Makefile,v 1.8 2001/08/20 21:53:57 naddy Exp $

COMMENT=	"play, encode, and manage Ogg Vorbis files"
DISTNAME=	vorbis-tools-1.0rc2
CATEGORIES=    	audio
NEED_VERSION=	1.435
HOMEPAGE=	http://www.vorbis.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/rc2/unix/

LIB_DEPENDS=	ao.2::audio/libao \
		ogg.2::audio/libogg \
		vorbis.0::audio/libvorbis

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-ogg-prefix=${LOCALBASE} \
		--with-vorbis-prefix=${LOCALBASE} \
		--with-ao-prefix=${LOCALBASE}

.include <bsd.port.mk>
