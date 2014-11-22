# $OpenBSD: Makefile,v 1.14 2014/11/22 00:10:50 naddy Exp $

COMMENT=	Diffie-Hellman key exchange system

DISTNAME=	Crypt-DH-0.07
REVISION=	0
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	math/p5-Math-BigInt-GMP \
		security/p5-Crypt-Random

MODULES=	cpan

# use a fast computer, tests will finish eventually
#NO_TEST=	tests take ages to complete

.include <bsd.port.mk>
