COMMENT=	Extensible Binary Meta Language library

DISTNAME=	libebml-1.4.2
CATEGORIES=	textproc
MASTER_SITES=	https://dl.matroska.org/downloads/libebml/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	ebml	4.0

HOMEPAGE=	https://www.matroska.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang ports-gcc base-gcc

MODULES +=	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
