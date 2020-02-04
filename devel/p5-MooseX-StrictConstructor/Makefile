# $OpenBSD: Makefile,v 1.4 2020/02/04 21:17:29 fcambus Exp $

COMMENT =	blow up object constructors on unknown attributes

DISTNAME =	MooseX-StrictConstructor-0.21
REVISION =	0

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Moo \
		devel/p5-Moose \
		devel/p5-Test-Fatal \
		devel/p5-Test-Needs

PKG_ARCH =	*

.include <bsd.port.mk>
