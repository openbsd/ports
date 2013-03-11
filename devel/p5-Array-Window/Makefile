# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:13 espie Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

TEST_DEPENDS+=devel/p5-Test-Pod

.include <bsd.port.mk>
