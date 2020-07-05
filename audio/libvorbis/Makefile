# $OpenBSD: Makefile,v 1.46 2020/07/05 15:45:00 tj Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.7
CATEGORIES=    	audio
HOMEPAGE=	https://xiph.org/vorbis/
SHARED_LIBS +=  vorbis               9.0      # 4.9
SHARED_LIBS +=  vorbisfile           6.0      # 6.8
SHARED_LIBS +=  vorbisenc            3.1      # 2.12

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/vorbis/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	m ogg
LIB_DEPENDS=	audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ogg=${LOCALBASE}
DEBUG_PACKAGES=	${BUILD_PACKAGES}
SEPARATE_BUILD=	Yes

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} libvorbis

.include <bsd.port.mk>
