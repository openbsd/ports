COMMENT =	parameterizable packages
DISTNAME =	Package-Variant-1.003002
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Import-Into>=1.0 \
		devel/p5-Module-Runtime>=0.013 \
		devel/p5-strictures>=2.0

TEST_DEPENDS =	devel/p5-Test-Fatal

# Addtitional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Moo

.include <bsd.port.mk>
