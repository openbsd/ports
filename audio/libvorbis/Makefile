# $OpenBSD: Makefile,v 1.7 2002/01/16 03:10:21 naddy Exp $

COMMENT=	"audio compression codec library"
DISTNAME=	libvorbis-1.0rc3
CATEGORIES=    	audio
NEED_VERSION=	1.435
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xiph.org/ogg/vorbis/download/ \
		http://www.vorbis.com/files/rc2/unix/ \
		http://www.oddsock.org/vorbisrc3/files/rc3/unix/

LIB_DEPENDS=	ogg.3::audio/libogg

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg=${LOCALBASE}

.include <bsd.port.mk>
