# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:14 sthen Exp $

COMMENT =	override subroutines in a module for unit testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockModule-v0.173.0
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CATEGORIES =	devel
REVISION =	0

# Artistic
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

RUN_DEPENDS =		devel/p5-SUPER

TEST_DEPENDS =		devel/p5-Test-Warnings

.include <bsd.port.mk>
