# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:17 sthen Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Throwable-0.200013
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.32 \
		devel/p5-Module-Runtime>=0.002 \
		devel/p5-Moo>=0

TEST_DEPENDS =	devel/p5-Devel-StackTrace>=1.32

.include <bsd.port.mk>
