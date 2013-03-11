# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:58 espie Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
DISTNAME=	News-Newsrc-1.09
REVISION=	0
CATEGORIES=	news
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
