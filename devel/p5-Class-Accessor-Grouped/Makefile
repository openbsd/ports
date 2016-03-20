# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:14 naddy Exp $

COMMENT =	lets you build groups of accessors

MODULES =	cpan
PKG_ARCH =	*
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
