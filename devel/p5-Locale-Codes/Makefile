# $OpenBSD: Makefile,v 1.4 2020/12/05 08:25:16 benoit Exp $

COMMENT =	distribution of modules to handle locale codes

DISTNAME =	Locale-Codes-3.66

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=1 RELEASE_TESTING=1

TEST_DEPENDS =		devel/p5-Test-Inter \
			devel/p5-File-Find-Rule

PKG_ARCH =		*

.include <bsd.port.mk>
