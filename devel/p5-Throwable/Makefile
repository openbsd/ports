# $OpenBSD: Makefile,v 1.10 2015/07/16 15:13:38 afresh1 Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
DISTNAME =	Throwable-0.200013
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.32 \
		devel/p5-Module-Runtime>=0.002 \
		devel/p5-Moo>=0

TEST_DEPENDS =	devel/p5-Devel-StackTrace>=1.32

.include <bsd.port.mk>
