# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:28:56 robert Exp $

COMMENT =	optimized type checks for Moo + Type::Tiny
DISTNAME =	MooX-TypeTiny-0.002003
CATEGORIES =	devel
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Moo \
		devel/p5-Type-Tiny
TEST_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
