# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:01 sthen Exp $

# The comment is an acrostic, or maybe bacronym of Moo
COMMENT =	Minimalist Object Orientation (with Moose compatibility)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Moo-2.003004
CATEGORIES =	devel
REVISION =	1

CPAN_AUTHOR =	HAARG

# Perl
PERMIT_PACKAGE =	Yes


RUN_DEPENDS =	devel/p5-Class-Method-Modifiers>=1.1 \
		devel/p5-Devel-GlobalDestruction>=0.11 \
		devel/p5-Module-Runtime>=0.014 \
		devel/p5-Role-Tiny>=2.000004 \
		devel/p5-Sub-Quote>=2.003001

# p5-strictures in RUN_DEPENDS because although not required
# it will be less confusing.
RUN_DEPENDS +=	devel/p5-strictures>=2

TEST_DEPENDS =	devel/p5-Class-XSAccessor>=1.18 \
		devel/p5-Sub-Name>=0.08 \
		devel/p5-Test-Fatal>=0.003 \
		devel/p5-strictures>=2

.include <bsd.port.mk>
