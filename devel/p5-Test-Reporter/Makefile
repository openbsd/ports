# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:11 sthen Exp $

COMMENT = 	sends test results to cpan-testers@perl.org

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Reporter-1.62
CATEGORIES =	devel

EPOCH =		0

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=	TEST_POD=1 \
		AUTHOR_TESTING=1
TEST_DEPENDS =	devel/p5-Test-Spelling \
		devel/p5-Pod-Coverage

.include <bsd.port.mk>
