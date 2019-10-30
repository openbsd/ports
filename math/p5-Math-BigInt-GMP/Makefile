# $OpenBSD: Makefile,v 1.20 2019/10/30 17:59:31 sthen Exp $

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME =	Math-BigInt-GMP-1.6007
CATEGORIES=	math

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c gmp>=6 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
