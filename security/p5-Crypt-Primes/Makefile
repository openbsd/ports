# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:00 naddy Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-Primes-0.50
REVISION=	1
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

.include <bsd.port.mk>
