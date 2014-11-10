# $OpenBSD: Makefile,v 1.16 2014/11/10 01:27:12 afresh1 Exp $

COMMENT =	test functions for exception based code

DISTNAME =	Test-Exception-0.35
CATEGORIES =	devel
MODULES =	cpan

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Sub-Uplevel>=0.18

TEST_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-IO-String

.include <bsd.port.mk>
