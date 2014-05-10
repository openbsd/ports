# $OpenBSD: Makefile,v 1.32 2014/05/10 17:17:55 afresh1 Exp $

SHARED_ONLY =	Yes

COMMENT =	perl module to validate function/method parameters

DISTNAME =	Params-Validate-1.09
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# artistic_2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

WANTLIB += c

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS = 	devel/p5-Module-Implementation

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Taint>=0.02 \
		devel/p5-Readonly \
		devel/p5-Readonly-XS

.include <bsd.port.mk>
