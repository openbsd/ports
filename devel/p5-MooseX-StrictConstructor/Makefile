# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:01 sthen Exp $

COMMENT =	blow up object constructors on unknown attributes

DISTNAME =	MooseX-StrictConstructor-0.21

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
