# $OpenBSD: Makefile,v 1.22 2019/07/12 20:48:53 sthen Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	News-Article-1.27
REVISION=	1
CATEGORIES=	news

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
