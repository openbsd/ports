# $OpenBSD: Makefile,v 1.10 2015/11/05 19:08:57 jca Exp $

COMMENT=	module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.07
REVISION=	2
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Class-ISA
TEST_DEPENDS=devel/p5-Test-Pod \
		devel/p5-Class-ISA

MAKE_ENV+=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
