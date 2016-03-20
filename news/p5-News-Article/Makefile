# $OpenBSD: Makefile,v 1.21 2016/03/20 19:56:58 naddy Exp $

COMMENT=	perl module for accessing NNTP articles

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	News-Article-1.27
REVISION=	1
CATEGORIES=	news

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
