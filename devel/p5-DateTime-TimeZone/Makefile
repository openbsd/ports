COMMENT =	DateTime submodule for TZ

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-TimeZone-2.62
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Singleton>=1.03 \
		devel/p5-Module-Runtime \
		devel/p5-Params-ValidationCompiler>=0.13 \
		devel/p5-Specio \
		devel/p5-Try-Tiny \
		devel/p5-namespace-autoclean

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

# Additional DEPENDS to avoid skipping tests
TEST_DEPENDS +=	devel/p5-DateTime \
		devel/p5-Test-Output \
		devel/p5-Test-Taint

.include <bsd.port.mk>
