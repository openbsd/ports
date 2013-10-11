# $OpenBSD: Makefile,v 1.7 2013/10/11 23:48:27 naddy Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

TEST_DEPENDS+=devel/p5-Test-Pod

.include <bsd.port.mk>
