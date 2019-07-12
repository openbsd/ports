# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:53 sthen Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	News-Newsrc-1.11
CATEGORIES=	news
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
