# $OpenBSD: Makefile,v 1.39 2020/11/11 09:21:25 benoit Exp $

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME =	Math-GMP-2.20
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =		devel/gmp

BUILD_DEPENDS =		devel/p5-Devel-CheckLib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
