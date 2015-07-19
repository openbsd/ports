# $OpenBSD: Makefile,v 1.3 2015/07/19 21:12:55 afresh1 Exp $

# The comment is an acrostic, or maybe bacronym of Moo
COMMENT =	Minimalist Object Orientation (with Moose compatibility)

MODULES =	cpan
DISTNAME =	Moo-2.000001
CATEGORIES =	devel

CPAN_AUTHOR =	HAARG

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes


RUN_DEPENDS =	devel/p5-Class-Method-Modifiers>=1.1 \
		devel/p5-Devel-GlobalDestruction>=0.11 \
		devel/p5-Module-Runtime>=0.014 \
		devel/p5-Role-Tiny>=2

# p5-strictures in RUN_DEPENDS because although not required
# it will be less confusing.
RUN_DEPENDS +=	devel/p5-strictures>=2

TEST_DEPENDS =	devel/p5-Class-XSAccessor>=1.18 \
		devel/p5-Sub-Name>=0 \
		devel/p5-Test-Fatal>=0.003 \
		devel/p5-strictures>=2

.include <bsd.port.mk>
