# $OpenBSD: Makefile,v 1.23 2019/11/03 14:07:44 jasper Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	News-Article-1.27
REVISION=	2
CATEGORIES=	news

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
