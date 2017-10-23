# $OpenBSD: Makefile,v 1.12 2017/10/23 19:00:55 naddy Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-Primes-0.50
REVISION=	2
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

.include <bsd.port.mk>
