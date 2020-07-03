# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:02 sthen Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Getopt-0.62
CATEGORIES=		devel
REVISION=		1

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive \
			devel/p5-Moose \
			devel/p5-MooseX-Role-Parameterized>=1.02
TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Module-Runtime \
			devel/p5-MRO-Compat \
			devel/p5-MooseX-ConfigFromFile \
			devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Trap \
			devel/p5-Test-Warn

.include <bsd.port.mk>
