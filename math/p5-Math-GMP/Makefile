# $OpenBSD: Makefile,v 1.36 2019/07/12 20:47:44 sthen Exp $

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME =	Math-GMP-2.14
REVISION =	0
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp>=4 perl

LIB_DEPENDS =		devel/gmp

BUILD_DEPENDS =		devel/p5-Devel-CheckLib

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
