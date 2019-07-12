# $OpenBSD: Makefile,v 1.8 2019/07/12 20:44:47 sthen Exp $

COMMENT =	working 'require Class::Name' and more

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-Load-0.24
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-Needs

.include <bsd.port.mk>
