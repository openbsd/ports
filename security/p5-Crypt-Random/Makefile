# $OpenBSD: Makefile,v 1.11 2013/03/11 11:41:27 espie Exp $

COMMENT=	cryptographically secure random number generator

MODULES=	cpan
DISTNAME=	Crypt-Random-1.25
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Loader \
		math/p5-Math-Pari

.include <bsd.port.mk>
