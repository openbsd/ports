# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:39 sthen Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	News-Newsrc-1.11
CATEGORIES=	news
REVISION =	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
