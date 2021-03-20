# $OpenBSD: Makefile,v 1.20 2021/03/20 12:11:06 bluhm Exp $

COMMENT =	easily create test classes in an xUnit style

DISTNAME =	Test-Class-0.52

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-MRO-Compat>=0.11 \
			devel/p5-Module-Runtime \
			devel/p5-Try-Tiny
TEST_DEPENDS =		devel/p5-Test-Exception>=0.25

PKG_ARCH =	*

.include <bsd.port.mk>
