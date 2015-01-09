# $OpenBSD: Makefile,v 1.9 2015/01/09 15:51:02 afresh1 Exp $

COMMENT =		routines for manipulating stashes

MODULES =		cpan
DISTNAME =		Package-Stash-0.37
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-Module-Implementation>=0.06
		
TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Test-Requires>=0

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mno_shared}
RUN_DEPENDS +=	devel/p5-Package-Stash-XS
.endif

.include <bsd.port.mk>
