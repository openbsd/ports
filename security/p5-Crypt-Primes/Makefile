# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:26 espie Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
DISTNAME=	Crypt-Primes-0.50
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

.include <bsd.port.mk>
