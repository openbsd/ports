# $OpenBSD: Makefile,v 1.8 2002/01/21 13:59:38 naddy Exp $

COMMENT=	"Ogg bitstream library"
DISTNAME=	libogg-1.0rc3
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
		http://www.vorbis.com/files/rc3/unix/ \
		http://www.oddsock.org/vorbisrc3/files/rc3/unix/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
