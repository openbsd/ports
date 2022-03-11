COMMENT =	merges arbitrarily deep hashes into a single hash

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Hash-Merge-0.302
CATEGORIES =	devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Clone \
		devel/p5-Clone-Choose>=0.008

# Additional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Clone-PP

.include <bsd.port.mk>
