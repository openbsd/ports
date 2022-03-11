COMMENT =	validate method/function parameters

DISTNAME =	Params-Validate-1.30
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan

WANTLIB += c perl

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Implementation

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Taint>=0.02 \
		devel/p5-Readonly 

.include <bsd.port.mk>
