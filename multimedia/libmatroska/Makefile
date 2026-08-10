COMMENT=	extensible open standard audio/video container library

DISTNAME=	libmatroska-1.7.2
CATEGORIES=	multimedia
SITES=		https://dl.matroska.org/downloads/libmatroska/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	matroska	5.3

HOMEPAGE=	https://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ebml m

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=On

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

LIB_DEPENDS +=	textproc/libebml

NO_TEST =	Yes

.include <bsd.port.mk>
