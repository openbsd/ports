# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:58 naddy Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	News-Newsrc-1.11
CATEGORIES=	news
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
