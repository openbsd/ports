# $OpenBSD: Makefile,v 1.26 2020/11/18 19:57:53 benoit Exp $

COMMENT =	recursively scan Perl code for dependencies

DISTNAME =	Module-ScanDeps-1.29

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-prefork

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
