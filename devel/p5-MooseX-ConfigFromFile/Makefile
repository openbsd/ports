# $OpenBSD: Makefile,v 1.13 2020/08/14 01:49:08 afresh1 Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-ConfigFromFile-0.14
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=	Yes
REVISION=		2

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild tiny

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-MooseX-Types-Path-Tiny>=0.005 \
			devel/p5-namespace-autoclean

TEST_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Getopt \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Without-Module

.include <bsd.port.mk>
