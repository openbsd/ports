# $OpenBSD: Makefile,v 1.39 2014/01/29 21:36:06 brad Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.4
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               8.0      # .4.6
SHARED_LIBS +=  vorbisfile           6.0      # .6.5
SHARED_LIBS +=  vorbisenc            3.1      # .2.9

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

WANTLIB=	m ogg
LIB_DEPENDS=	audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
