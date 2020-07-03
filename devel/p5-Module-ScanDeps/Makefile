# $OpenBSD: Makefile,v 1.25 2020/07/03 21:45:00 sthen Exp $

COMMENT =	recursively scan Perl code for dependencies

DISTNAME =	Module-ScanDeps-1.27
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-prefork

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
