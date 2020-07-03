# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:00 sthen Exp $

COMMENT =		loads one of several alternate module implementations

DISTNAME =		Module-Implementation-0.09
CATEGORIES =		devel
REVISION =		0

# artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.012 \
		devel/p5-Try-Tiny>=0

TEST_DEPENDS =	devel/p5-Test-Fatal>=0.006 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
