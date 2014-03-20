# $OpenBSD: Makefile,v 1.13 2014/03/20 20:36:00 jasper Exp $

COMMENT=	Diffie-Hellman key exchange system

DISTNAME=	Crypt-DH-0.07
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	math/p5-Math-BigInt-Pari \
		security/p5-Crypt-Random

MODULES=	cpan

# use a fast computer, tests will finish eventually
#NO_TEST=	tests take ages to complete

.include <bsd.port.mk>
