# $OpenBSD: Makefile,v 1.10 2011/07/07 17:18:11 jasper Exp $

COMMENT=	cryptographically secure random number generator

MODULES=	cpan
DISTNAME=	Crypt-Random-1.25
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Loader \
		math/p5-Math-Pari

.include <bsd.port.mk>
