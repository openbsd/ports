# $OpenBSD: Makefile,v 1.15 2014/05/10 02:04:41 afresh1 Exp $

COMMENT =	test functions for exception based code

DISTNAME =	Test-Exception-0.32
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Sub-Uplevel>=0.18

TEST_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-IO-String

.include <bsd.port.mk>
