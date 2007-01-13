# $OpenBSD: Makefile,v 1.12 2007/01/13 12:15:21 simon Exp $

COMMENT=	"perl module for accessing NNTP articles"

MODULES=	cpan
DISTNAME=	News-Article-1.27
CATEGORIES=	news

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
