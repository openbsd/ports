# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:44 sthen Exp $

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME =	Math-BigInt-GMP-1.38
REVISION =	0
CATEGORIES=	math

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp>=6 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
