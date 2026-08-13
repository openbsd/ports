COMMENT =	Perl interface to the libgd graphics library

DISTNAME =	GD-2.86
CPAN_AUTHOR =	RURBAN

CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c gd perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-ExtUtils-PkgConfig \
			sysutils/p5-File-Which
LIB_DEPENDS =		graphics/gd
TEST_DEPENDS =		devel/p5-Test-NoWarnings>=1.0

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos

# Tests will use p5-Test-Fork if available

.include <bsd.port.mk>
