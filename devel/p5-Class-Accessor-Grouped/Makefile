# $OpenBSD: Makefile,v 1.11 2014/05/11 16:21:14 afresh1 Exp $

COMMENT =	lets you build groups of accessors

MODULES =	cpan
DISTNAME =	Class-Accessor-Grouped-0.10010
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.012

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Class-XSAccessor \
		devel/p5-Sub-Name \
		devel/p5-Package-Stash

.include <bsd.port.mk>
