# $OpenBSD: Makefile,v 1.10 2019/04/22 08:58:46 cwen Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-MethodAttributes-0.31
CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-MooseX-Types>=0.21 \
		devel/p5-namespace-autoclean>=0.08

TEST_DEPENDS =	devel/p5-MooseX-Role-Parameterized \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
