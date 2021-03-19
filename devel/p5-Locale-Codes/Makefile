# $OpenBSD: Makefile,v 1.5 2021/03/19 21:31:24 bluhm Exp $

COMMENT =	distribution of modules to handle locale codes

DISTNAME =	Locale-Codes-3.67

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=1 RELEASE_TESTING=1

TEST_DEPENDS =		devel/p5-Test-Inter>=1.09 \
			devel/p5-File-Find-Rule

PKG_ARCH =		*

.include <bsd.port.mk>
