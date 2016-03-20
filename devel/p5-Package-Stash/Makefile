# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:31 naddy Exp $

COMMENT =		routines for manipulating stashes

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Package-Stash-0.37
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-Module-Implementation>=0.06 \
		devel/p5-Package-Stash-XS
		
TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.mk>
