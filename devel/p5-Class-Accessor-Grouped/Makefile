# $OpenBSD: Makefile,v 1.12 2015/01/09 15:53:22 afresh1 Exp $

COMMENT =	lets you build groups of accessors

MODULES =	cpan
DISTNAME =	Class-Accessor-Grouped-0.10012
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.012

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Sub-Name \
		devel/p5-Package-Stash

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mno_shared}
RUN_DEPENDS += devel/p5-Class-XSAccessor
.endif

.include <bsd.port.mk>
