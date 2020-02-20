# $OpenBSD: Makefile,v 1.16 2020/02/20 12:08:34 benoit Exp $

COMMENT =	override subroutines in a module for unit testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockModule-v0.172.0
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CATEGORIES =	devel

# Artistic
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

RUN_DEPENDS =		devel/p5-SUPER

.include <bsd.port.mk>
