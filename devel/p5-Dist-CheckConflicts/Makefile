# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:52 sthen Exp $

COMMENT =	declare version conflicts for your dist

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dist-CheckConflicts-0.11
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.009

TEST_DEPENDS =	devel/p5-Test-Fatal>=0

.include <bsd.port.mk>
