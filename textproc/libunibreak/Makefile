COMMENT=	implementation of the line and word breaking

V=		6.1
DISTNAME=	libunibreak-${V}

HOMEPAGE=	https://github.com/adah1972/libunibreak/
SITES=		https://github.com/adah1972/libunibreak/releases/download/libunibreak_${V:S/./_/}/

SHARED_LIBS +=  unibreak             1.1      # 6.1

CATEGORIES=	textproc

# Zlib/PNG license
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
