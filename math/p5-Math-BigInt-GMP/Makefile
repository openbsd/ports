# $OpenBSD: Makefile,v 1.16 2014/12/17 10:22:47 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME =	Math-BigInt-GMP-1.38
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=6

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
