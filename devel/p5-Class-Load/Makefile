# $OpenBSD: Makefile,v 1.5 2015/06/29 06:01:43 benoit Exp $

COMMENT =	working 'require Class::Name' and more

MODULES =	cpan
DISTNAME =	Class-Load-0.23
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
