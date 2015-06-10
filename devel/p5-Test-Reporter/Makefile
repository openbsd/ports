# $OpenBSD: Makefile,v 1.11 2015/06/10 15:07:42 benoit Exp $

COMMENT = 	sends test results to cpan-testers@perl.org

MODULES =	cpan
DISTNAME =	Test-Reporter-1.62
CATEGORIES =	devel

EPOCH =		0

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=	TEST_POD=1 \
		AUTHOR_TESTING=1
TEST_DEPENDS =	devel/p5-Test-Spelling \
		devel/p5-Pod-Coverage

.include <bsd.port.mk>
