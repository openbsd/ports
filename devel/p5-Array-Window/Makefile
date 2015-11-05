# $OpenBSD: Makefile,v 1.9 2015/11/05 19:08:56 jca Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
REVISION=	2
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

RUN_DEPENDS=	devel/p5-Params-Util
TEST_DEPENDS+=	devel/p5-Test-Pod

.include <bsd.port.mk>
