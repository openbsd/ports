# $OpenBSD: Makefile,v 1.33 2010/11/25 17:00:00 naddy Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.2
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               8.0      # .4.5
SHARED_LIBS +=  vorbisfile           6.0      # .6.4
SHARED_LIBS +=  vorbisenc            3.1      # .2.8

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

# no inter-library dependency, but we still build against the API
WANTLIB += ogg>=6
LIB_DEPENDS=	audio/libogg

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
