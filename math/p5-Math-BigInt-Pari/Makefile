# $OpenBSD: Makefile,v 1.2 2014/12/06 16:01:50 benoit Exp $

COMMENT=	use Math::Pari for Math::BigInt routines

DISTNAME =	Math-BigInt-Pari-1.18
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	math/p5-Math-Pari

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
