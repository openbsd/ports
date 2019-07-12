# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:00 sthen Exp $

COMMENT =	blow up Moo-based object constructors on unknown attributes

DISTNAME =	MooX-StrictConstructor-0.010

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers \
		devel/p5-Moo \
		devel/p5-strictures>=1

TEST_DEPENDS =	devel/p5-Test-Fatal

PKG_ARCH =	*

.include <bsd.port.mk>
