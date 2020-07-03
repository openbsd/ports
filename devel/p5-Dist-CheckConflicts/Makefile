# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:50 sthen Exp $

COMMENT =	declare version conflicts for your dist

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dist-CheckConflicts-0.11
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.009

TEST_DEPENDS =	devel/p5-Test-Fatal>=0

.include <bsd.port.mk>
