# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:22 sthen Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
DISTNAME=	Crypt-Primes-0.50
REVISION=	0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-Random

.include <bsd.port.mk>
