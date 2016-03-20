# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:21 naddy Exp $

COMMENT =	declare version conflicts for your dist

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dist-CheckConflicts-0.11
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Module-Runtime>=0.009

TEST_DEPENDS =	devel/p5-Test-Fatal>=0

.include <bsd.port.mk>
