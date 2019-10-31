# $OpenBSD: Makefile,v 1.15 2019/10/31 03:33:05 afresh1 Exp $

COMMENT =	override subroutines in a module for unit testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockModule-v0.171.0
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CATEGORIES =	devel

# Artistic
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

RUN_DEPENDS =		devel/p5-SUPER

.include <bsd.port.mk>
