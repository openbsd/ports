# $OpenBSD: Makefile,v 1.7 2016/11/25 23:41:17 afresh1 Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Package-DeprecationManager-0.17
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Package-Stash \
		devel/p5-Params-Util \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Warnings

.include <bsd.port.mk>
