# $OpenBSD: Makefile,v 1.1.1.1 2007/10/13 06:44:44 simon Exp $

COMMENT=        calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.01
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

REGRESS_DEPENDS+=::devel/p5-Test-Pod

.include <bsd.port.mk>
