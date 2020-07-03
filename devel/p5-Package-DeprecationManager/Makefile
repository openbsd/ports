# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:05 sthen Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Package-DeprecationManager-0.17
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Package-Stash \
		devel/p5-Params-Util \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name

TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Test-Warnings

.include <bsd.port.mk>
