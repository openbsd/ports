# $OpenBSD: Makefile,v 1.2 2008/07/27 22:55:38 simon Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

REGRESS_DEPENDS+=::devel/p5-Test-Pod

.include <bsd.port.mk>
