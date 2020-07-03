# $OpenBSD: Makefile,v 1.2 2020/07/03 21:44:58 sthen Exp $

COMMENT =	distribution of modules to handle locale codes

DISTNAME =	Locale-Codes-3.62
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=1 RELEASE_TESTING=1

TEST_DEPENDS =		devel/p5-Test-Inter

PKG_ARCH =		*

.include <bsd.port.mk>
