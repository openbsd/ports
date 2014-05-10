# $OpenBSD: Makefile,v 1.11 2014/05/10 17:15:50 afresh1 Exp $

COMMENT =	mro::* interface compatibility for Perl < 5.9.5

DISTNAME =	MRO-Compat-0.12
CATEGORIES =	devel

CPAN_AUTHOR =	BOBTFISH

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =	devel/p5-Class-C3>=0.20

# Optional depends to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
