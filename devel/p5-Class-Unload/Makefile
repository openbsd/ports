# $OpenBSD: Makefile,v 1.8 2019/03/12 03:21:53 afresh1 Exp $

COMMENT =	unload a class
DISTNAME =	Class-Unload-0.11
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	devel/p5-Class-Inspector

TEST_DEPENDS =	devel/p5-Test-Requires

# additional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Moose

.include <bsd.port.mk>
