# $OpenBSD: Makefile,v 1.9 2013/10/11 23:48:34 naddy Exp $

COMMENT=	module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.07
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Class-ISA
TEST_DEPENDS=devel/p5-Test-Pod \
		devel/p5-Class-ISA

MAKE_ENV+=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
