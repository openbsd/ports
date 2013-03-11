# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:20 espie Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
DISTNAME =	Package-DeprecationManager-0.10
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Params-Util \
		devel/p5-Sub-Install

TEST_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
