# $OpenBSD: Makefile,v 1.28 2009/07/13 15:48:55 naddy Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.2.3
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               7.0      # .4.3
SHARED_LIBS +=  vorbisfile           6.0      # .6.2
SHARED_LIBS +=  vorbisenc            3.0      # .2.6

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

# no inter-library dependency, but we still build against the API
LIB_DEPENDS=	ogg.>=6::audio/libogg

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
