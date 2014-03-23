# $OpenBSD: Makefile,v 1.8 2014/03/23 14:24:29 jasper Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

RUN_DEPENDS=	devel/p5-Params-Util
TEST_DEPENDS+=	devel/p5-Test-Pod

.include <bsd.port.mk>
