# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:42 sthen Exp $

COMMENT=	module to create objects that are handles to classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Handle-1.07
REVISION=	3
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Class-ISA
TEST_DEPENDS=devel/p5-Test-Pod \
		devel/p5-Class-ISA

MAKE_ENV+=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
