# $OpenBSD: Makefile,v 1.13 2016/03/13 15:49:16 naddy Exp $

COMMENT =	lets you build groups of accessors

MODULES =	cpan
DISTNAME =	Class-Accessor-Grouped-0.10012
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.012 \
		devel/p5-Class-XSAccessor

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Sub-Name \
		devel/p5-Package-Stash

.include <bsd.port.mk>
