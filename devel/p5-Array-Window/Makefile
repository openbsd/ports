# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:13 naddy Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
PKG_ARCH=	*
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
