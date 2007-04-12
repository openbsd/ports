# $OpenBSD: Makefile,v 1.13 2007/04/12 18:59:36 jasper Exp $

COMMENT=	"perl module for accessing NNTP articles"

MODULES=	cpan
DISTNAME=	News-Article-1.27
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	news

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
