# $OpenBSD: Makefile,v 1.1.1.1 2020/05/17 18:41:57 afresh1 Exp $

COMMENT =	automatically apply roles at object creation time
DISTNAME =	MooX-Traits-0.005
CATEGORIES =	devel
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	devel/p5-Exporter-Tiny \
		devel/p5-Module-Runtime \
		devel/p5-Role-Tiny>=1.0
TEST_DEPENDS =	devel/p5-Moo \
		devel/p5-MooseX-Role-Parameterized \
		devel/p5-Package-Variant \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
