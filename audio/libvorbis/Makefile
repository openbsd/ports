COMMENT=	audio compression codec library

VERSION=	1.3.7
DISTNAME=	libvorbis-${VERSION}
CATEGORIES=    	audio
HOMEPAGE=	https://xiph.org/vorbis/
SHARED_LIBS +=  vorbis               9.0      # 4.9
SHARED_LIBS +=  vorbisfile           6.0      # 6.8
SHARED_LIBS +=  vorbisenc            3.1      # 2.12

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/vorbis/ \
		https://github.com/xiph/vorbis/releases/download/v${VERSION}/
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
