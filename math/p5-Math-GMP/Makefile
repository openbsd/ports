COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME =	Math-GMP-2.24
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =		devel/gmp

BUILD_DEPENDS =		devel/p5-Devel-CheckLib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
