# $OpenBSD: Makefile,v 1.3 2020/11/07 06:39:18 benoit Exp $

COMMENT =	distribution of modules to handle locale codes

DISTNAME =	Locale-Codes-3.65

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=1 RELEASE_TESTING=1

TEST_DEPENDS =		devel/p5-Test-Inter \
			devel/p5-File-Find-Rule

PKG_ARCH =		*

.include <bsd.port.mk>
