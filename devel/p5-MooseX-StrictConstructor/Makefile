# $OpenBSD: Makefile,v 1.2 2018/08/15 09:55:24 fcambus Exp $

COMMENT =	blow up object constructors on unknown attributes

DISTNAME =	MooseX-StrictConstructor-0.21

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-namespace-autoclean

TEST_DEPENDS =	devel/p5-Moo \
		devel/p5-Moose \
		devel/p5-Test-Fatal \
		devel/p5-Test-Needs

PKG_ARCH =	*

.include <bsd.port.mk>
