# $OpenBSD: Makefile,v 1.14 2021/12/27 00:08:32 afresh1 Exp $

COMMENT =	role for classes that can be thrown

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Throwable-1.000
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.32 \
		devel/p5-Module-Runtime>=0.002 \
		devel/p5-Moo>=1.000001 \
		devel/p5-Sub-Quote

TEST_DEPENDS =	devel/p5-Devel-StackTrace>=1.32

.include <bsd.port.mk>
