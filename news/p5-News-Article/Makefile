# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:39 sthen Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	News-Article-1.27
REVISION=	3
CATEGORIES=	news

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
