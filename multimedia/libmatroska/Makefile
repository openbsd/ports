COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.7.1
CATEGORIES=	multimedia
SITES=		https://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	matroska	5.2

HOMEPAGE=	https://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ebml m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CFLAGS +=	-I${LOCALBASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

LIB_DEPENDS +=	textproc/libebml>=1.4.4

NO_TEST =	Yes

.include <bsd.port.mk>
