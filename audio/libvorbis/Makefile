# $OpenBSD: Makefile,v 1.35 2012/03/29 13:38:13 sthen Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.3
CATEGORIES=    	audio
HOMEPAGE=	http://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               8.0      # .4.6
SHARED_LIBS +=  vorbisfile           6.0      # .6.5
SHARED_LIBS +=  vorbisenc            3.1      # .2.9

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
SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
