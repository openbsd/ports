# $OpenBSD: Makefile,v 1.32 2015/08/17 06:49:41 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME =	Math-GMP-2.11
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=4

LIB_DEPENDS =		devel/gmp

BUILD_DEPENDS =		devel/p5-Devel-CheckLib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
