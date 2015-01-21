# $OpenBSD: Makefile,v 1.10 2015/01/21 14:40:11 sthen Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
DISTNAME=	Crypt-Primes-0.50
REVISION=	1
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

.include <bsd.port.mk>
