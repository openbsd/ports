# $OpenBSD: Makefile,v 1.12 2019/05/04 01:27:58 afresh1 Exp $

COMMENT =		routines for manipulating stashes

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Package-Stash-0.38
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02

RUN_DEPENDS =	devel/p5-Module-Implementation>=0.06 \
		devel/p5-Package-Stash-XS>=0.26

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
