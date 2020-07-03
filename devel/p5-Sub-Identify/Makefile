# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:10 sthen Exp $

COMMENT =		retrieve names of code references
DISTNAME =		Sub-Identify-0.14
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

WANTLIB +=	c perl

MODULES =	cpan

# Additional dependency to avoid skipping tests
TEST_DEPENDS +=		devel/p5-Test-Pod

.include <bsd.port.mk>
