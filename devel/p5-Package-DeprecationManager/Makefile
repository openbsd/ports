# $OpenBSD: Makefile,v 1.5 2015/11/16 10:59:50 benoit Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
DISTNAME =	Package-DeprecationManager-0.15
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Params-Util \
		devel/p5-Sub-Install

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-Warnings

.include <bsd.port.mk>
