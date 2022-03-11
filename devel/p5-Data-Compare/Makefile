COMMENT =	compare perl data structures

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Data-Compare-1.27
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0.43 \
		devel/p5-File-Find-Rule>=0.1

# Additional depends to avoid skipping tests
TEST_DEPENDS +=	converters/p5-JSON \
		devel/p5-Test-Pod

# Porting Scalar::Properties will enable more tests

.include <bsd.port.mk>
