# $OpenBSD: Makefile,v 1.10 2002/07/20 12:10:21 naddy Exp $

COMMENT=	"audio compression codec library"

DISTNAME=	libvorbis-1.0
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.linuxpowered.com/pub/Vorbis/unix/ \
		ftp://ftp.wiles.org/pub/mirrors/Vorbis/unix/ \
		http://xiph.stratius.com/vorbis/unix/ \
		http://www.oddsock.org/vorbis/unix/ \
		http://www.casterclub.com/vorbis/unix/ \
		http://www.math.utoledo.edu/~chaese/Vorbis/unix/

LIB_DEPENDS=	ogg.4::audio/libogg

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg=${LOCALBASE}

.include <bsd.port.mk>
