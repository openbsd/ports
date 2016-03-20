# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:48 naddy Exp $

COMMENT=	use Math::Pari for Math::BigInt routines

DISTNAME =	Math-BigInt-Pari-1.18
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	math/p5-Math-Pari

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
