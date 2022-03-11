COMMENT =		routines for manipulating stashes

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Package-Stash-0.39
CATEGORIES =		devel

FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =		Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02

RUN_DEPENDS =	devel/p5-Module-Implementation>=0.06

# Recommended, not required
RUN_DEPENDS +=	devel/p5-Package-Stash-XS>=0.26

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-Test-Fatal \
		devel/p5-Test-Needs

.include <bsd.port.mk>
