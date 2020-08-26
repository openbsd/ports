# $OpenBSD: Makefile,v 1.14 2020/08/26 01:49:51 afresh1 Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Getopt-0.74
CATEGORIES=		devel

FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive>=0.088 \
			devel/p5-Moose \
			devel/p5-MooseX-Role-Parameterized>=1.01 \
			devel/p5-Try-Tiny
TEST_DEPENDS=		devel/p5-Class-Load \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Module-Runtime \
			devel/p5-MRO-Compat \
			devel/p5-MooseX-ConfigFromFile \
			devel/p5-MooseX-StrictConstructor \
			devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Needs \
			devel/p5-Test-Requires \
			devel/p5-Test-Trap

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
