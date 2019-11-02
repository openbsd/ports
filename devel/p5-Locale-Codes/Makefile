# $OpenBSD: Makefile,v 1.1.1.1 2019/11/02 11:42:00 giovanni Exp $

COMMENT =	distribution of modules to handle locale codes

DISTNAME =	Locale-Codes-3.62

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=1 RELEASE_TESTING=1

TEST_DEPENDS =		devel/p5-Test-Inter

PKG_ARCH =		*

.include <bsd.port.mk>
