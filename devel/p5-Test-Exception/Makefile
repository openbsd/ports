# $OpenBSD: Makefile,v 1.17 2015/01/19 00:03:42 afresh1 Exp $

COMMENT =	test functions for exception based code

DISTNAME =	Test-Exception-0.36
CATEGORIES =	devel
MODULES =	cpan

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Sub-Uplevel>=0.18

TEST_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-IO-String

.include <bsd.port.mk>
