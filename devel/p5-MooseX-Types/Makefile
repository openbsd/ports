# $OpenBSD: Makefile,v 1.12 2015/06/12 13:46:08 benoit Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
DISTNAME =	MooseX-Types-0.45
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		devel/p5-Moose>=0.93 \
		devel/p5-Module-Runtime \
		devel/p5-Sub-Exporter \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name \
		devel/p5-namespace-autoclean
BUILD_DEPENDS = ${RUN_DEPENDS} \
		devel/p5-Module-Build-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
