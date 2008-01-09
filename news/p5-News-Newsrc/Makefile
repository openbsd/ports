# $OpenBSD: Makefile,v 1.12 2008/01/09 16:06:06 merdely Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
DISTNAME=	News-Newsrc-1.09
CATEGORIES=	news

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
