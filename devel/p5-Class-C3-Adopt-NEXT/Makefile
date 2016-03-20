# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:14 naddy Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-C3-Adopt-NEXT-0.14
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		devel/p5-Module-Build-Tiny
RUN_DEPENDS =		devel/p5-MRO-Compat
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
