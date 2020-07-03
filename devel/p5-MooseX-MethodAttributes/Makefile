# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:02 sthen Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-MethodAttributes-0.31
CATEGORIES =	devel
REVISION =	0

FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-MooseX-Types>=0.21 \
		devel/p5-namespace-autoclean>=0.08

TEST_DEPENDS =	devel/p5-MooseX-Role-Parameterized \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires

.include <bsd.port.mk>
