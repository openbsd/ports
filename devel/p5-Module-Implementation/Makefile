# $OpenBSD: Makefile,v 1.3 2015/01/09 15:57:11 afresh1 Exp $

COMMENT =		loads one of several alternate module implementations

DISTNAME =		Module-Implementation-0.09
CATEGORIES =		devel

# artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.012 \
		devel/p5-Try-Tiny>=0

TEST_DEPENDS =	devel/p5-Test-Fatal>=0.006 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
