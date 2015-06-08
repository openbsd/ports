# $OpenBSD: Makefile,v 1.8 2015/06/08 07:33:43 benoit Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
DISTNAME =	Class-C3-Adopt-NEXT-0.14
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =		devel/p5-Module-Build-Tiny
RUN_DEPENDS =		devel/p5-MRO-Compat
TEST_DEPENDS =		devel/p5-Test-Exception

.include <bsd.port.mk>
