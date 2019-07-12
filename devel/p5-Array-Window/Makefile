# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:44 sthen Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Array-Window-1.02
REVISION=	2
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

RUN_DEPENDS=	devel/p5-Params-Util
TEST_DEPENDS+=	devel/p5-Test-Pod

.include <bsd.port.mk>
