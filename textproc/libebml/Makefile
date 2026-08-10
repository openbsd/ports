COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.4.7
CATEGORIES=	textproc
SITES=		https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ebml	4.0

HOMEPAGE=	https://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc

MODULES +=	devel/cmake

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

BUILD_DEPENDS +=	devel/utfcpp>=4.1.1

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=On

NO_TEST =	Yes

.include <bsd.port.mk>
