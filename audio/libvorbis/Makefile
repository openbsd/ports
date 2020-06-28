# $OpenBSD: Makefile,v 1.45 2020/06/28 20:03:51 tj Exp $

COMMENT=	audio compression codec library

DISTNAME=	libvorbis-1.3.6
REVISION=	0
CATEGORIES=    	audio
HOMEPAGE=	https://www.xiph.org/vorbis/
SHARED_LIBS +=  vorbis               9.0      # 4.8
SHARED_LIBS +=  vorbisfile           6.0      # 6.7
SHARED_LIBS +=  vorbisenc            3.1      # 2.11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.xiph.org/releases/vorbis/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	m ogg
LIB_DEPENDS=	audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ogg=${LOCALBASE}
SEPARATE_BUILD=	Yes

post-install:
	cd ${PREFIX}/share/doc && mv ${DISTNAME} libvorbis

.include <bsd.port.mk>
