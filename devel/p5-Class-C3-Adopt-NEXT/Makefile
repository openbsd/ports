# $OpenBSD: Makefile,v 1.13 2021/11/15 11:53:53 jca Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-C3-Adopt-NEXT-0.14
REVISION =	1
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-Module-Build-Tiny
RUN_DEPENDS =		devel/p5-MRO-Compat
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
