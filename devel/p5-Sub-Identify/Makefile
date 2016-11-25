# $OpenBSD: Makefile,v 1.15 2016/11/25 23:43:22 afresh1 Exp $

COMMENT =		retrieve names of code references
DISTNAME =		Sub-Identify-0.12
CATEGORIES =		devel

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c perl

MODULES =	cpan

# Additional dependency to avoid skipping tests
TEST_DEPENDS +=		devel/p5-Test-Pod

.include <bsd.port.mk>
