# $OpenBSD: Makefile,v 1.11 2007/09/15 21:41:50 merdely Exp $

COMMENT=	module for managing newsrc files

MODULES=	cpan
DISTNAME=	News-Newsrc-1.08
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	news

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Set-IntSpan->=1.07:math/p5-Set-IntSpan
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
