# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:42 sthen Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Class-C3-Adopt-NEXT-0.14
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-Module-Build-Tiny
RUN_DEPENDS =		devel/p5-MRO-Compat
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
