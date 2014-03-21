# $OpenBSD: Makefile,v 1.3 2014/03/21 15:29:15 jasper Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
DISTNAME =	Package-DeprecationManager-0.13
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Params-Util \
		devel/p5-Sub-Install

TEST_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
