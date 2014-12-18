# $OpenBSD: Makefile,v 1.18 2014/12/18 08:22:43 benoit Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
DISTNAME =	News-Newsrc-1.11
CATEGORIES=	news

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
