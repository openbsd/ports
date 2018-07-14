# $OpenBSD: Makefile,v 1.1.1.1 2018/07/14 15:55:30 fcambus Exp $

COMMENT =	blow up Moo-based object constructors on unknown attributes

DISTNAME =	MooX-StrictConstructor-0.010

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers \
		devel/p5-Moo \
		devel/p5-strictures>=1

TEST_DEPENDS =	devel/p5-Test-Fatal

PKG_ARCH =	*

.include <bsd.port.mk>
