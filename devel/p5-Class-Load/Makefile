# $OpenBSD: Makefile,v 1.7 2017/04/28 16:27:30 benoit Exp $

COMMENT =	working 'require Class::Name' and more

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-Load-0.24
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-Needs

.include <bsd.port.mk>
