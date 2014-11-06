# $OpenBSD: Makefile,v 1.2 2014/11/06 16:29:38 benoit Exp $

COMMENT =	minimalist object orientation (with Moose compatibility)

MODULES =	cpan
DISTNAME =	Moo-1.006001
CATEGORIES =	devel

CPAN_AUTHOR =	HAARG

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers \
		devel/p5-Devel-GlobalDestruction \
		devel/p5-Dist-CheckConflicts \
		devel/p5-Module-Runtime \
		devel/p5-Import-Into \
		devel/p5-Role-Tiny \
		devel/p5-Test-Fatal \
		devel/p5-strictures

.include <bsd.port.mk>
