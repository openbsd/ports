# The comment is an acrostic, or maybe bacronym of Moo
COMMENT =	Minimalist Object Orientation (with Moose compatibility)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Moo-2.005005
CATEGORIES =	devel

CPAN_AUTHOR =	HAARG

# Perl
PERMIT_PACKAGE =	Yes


RUN_DEPENDS =	devel/p5-Class-Method-Modifiers>=1.10 \
		devel/p5-Module-Runtime>=0.014 \
		devel/p5-Role-Tiny>=2.002003 \
		devel/p5-Sub-Quote>=2.006006

# p5-strictures in RUN_DEPENDS because although not required
# it will be less confusing.
RUN_DEPENDS +=	devel/p5-strictures>=2

TEST_DEPENDS =	devel/p5-Class-XSAccessor>=1.18

.include <bsd.port.mk>
