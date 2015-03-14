# $OpenBSD: Makefile,v 1.40 2015/03/14 20:56:14 naddy Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.5
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               9.0      # 4.8
SHARED_LIBS +=  vorbisfile           6.0      # 6.7
SHARED_LIBS +=  vorbisenc            3.1      # 2.11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/vorbis/

WANTLIB=	m ogg
LIB_DEPENDS=	audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --with-ogg=${LOCALBASE}
SEPARATE_BUILD=	Yes

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} libvorbis

.include <bsd.port.mk>
