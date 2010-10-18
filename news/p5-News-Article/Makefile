# $OpenBSD: Makefile,v 1.16 2010/10/18 21:25:08 espie Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
DISTNAME=	News-Article-1.27
REVISION=	0
CATEGORIES=	news
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
