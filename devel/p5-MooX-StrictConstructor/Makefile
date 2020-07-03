# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:01 sthen Exp $

COMMENT =	blow up Moo-based object constructors on unknown attributes

DISTNAME =	MooX-StrictConstructor-0.010
REVISION =	1

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers \
		devel/p5-Moo \
		devel/p5-strictures>=1

TEST_DEPENDS =	devel/p5-Test-Fatal

PKG_ARCH =	*

.include <bsd.port.mk>
