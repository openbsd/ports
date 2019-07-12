# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:46 sthen Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-C3-Adopt-NEXT-0.14
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-Module-Build-Tiny
RUN_DEPENDS =		devel/p5-MRO-Compat
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
