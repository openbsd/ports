# $OpenBSD: Makefile,v 1.27 2009/02/07 16:07:53 naddy Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.2.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               6.0      # .4.0
SHARED_LIBS +=  vorbisfile           5.0      # .5.0
SHARED_LIBS +=  vorbisenc            2.3      # .2.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

# no inter-library dependency, but we still build against the API
LIB_DEPENDS=	ogg.>=5::audio/libogg

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	simple

.include <bsd.port.mk>
