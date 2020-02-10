# $OpenBSD: Makefile,v 1.24 2020/02/10 01:41:19 bluhm Exp $

COMMENT =	recursively scan Perl code for dependencies

DISTNAME =	Module-ScanDeps-1.27

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-prefork

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
