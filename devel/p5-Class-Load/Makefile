# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:14 espie Exp $

COMMENT =	a working 'require Class::Name' and more

MODULES =	cpan
DISTNAME =	Class-Load-0.12
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

TEST_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
