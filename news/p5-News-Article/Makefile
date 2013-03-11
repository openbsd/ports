# $OpenBSD: Makefile,v 1.19 2013/03/11 11:35:58 espie Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
DISTNAME=	News-Article-1.27
REVISION=	1
CATEGORIES=	news
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
