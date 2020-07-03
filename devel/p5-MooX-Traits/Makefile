# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:01 sthen Exp $

COMMENT =	automatically apply roles at object creation time
DISTNAME =	MooX-Traits-0.005
CATEGORIES =	devel
PKG_ARCH =	*
REVISION =	0

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
