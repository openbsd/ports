# $OpenBSD: Makefile,v 1.4 2014/11/18 13:02:08 benoit Exp $

COMMENT =	working 'require Class::Name' and more

MODULES =	cpan
DISTNAME =	Class-Load-0.22
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Implementation \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny \
		devel/p5-namespace-clean

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
