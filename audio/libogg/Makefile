# $OpenBSD: Makefile,v 1.11 2003/06/08 00:10:06 naddy Exp $

COMMENT=	"Ogg bitstream library"

DISTNAME=	libogg-1.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/1.0/unix/ \
		ftp://ftp.wiles.org/pub/mirrors/Vorbis/unix/ \
		http://www.casterclub.com/vorbis/unix/ \
		http://www.math.utoledo.edu/~chaese/Vorbis/unix/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
