# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:19 espie Exp $

COMMENT =	organise your Moose types in libraries

MODULES =	cpan
DISTNAME =	MooseX-Types-0.25
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Carp-Clan \
		devel/p5-Moose>=0.93 \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name \
		devel/p5-namespace-clean
BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
