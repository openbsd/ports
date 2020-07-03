# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:43 sthen Exp $

COMMENT =	working 'require Class::Name' and more

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-Load-0.25
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS =	Yes
REVISION =	0

# same as perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-Needs \
		devel/p5-Test-Without-Module

.include <bsd.port.mk>
