# $OpenBSD: Makefile,v 1.4 2010/03/22 13:54:21 sturm Exp $

COMMENT=	provable prime number generator

MODULES=	cpan
DISTNAME=	Crypt-Primes-0.50
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-Random

.include <bsd.port.mk>
