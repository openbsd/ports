# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:02 sthen Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Types-0.50
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		devel/p5-Moose>=0.93 \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter \
		devel/p5-Sub-Exporter-ForMethods \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name \
		devel/p5-namespace-autoclean
BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
