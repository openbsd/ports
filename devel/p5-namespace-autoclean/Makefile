# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:21 sthen Exp $

COMMENT =	keep imports out of your namespace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	namespace-autoclean-0.29
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Moose>=2.1204 \
		devel/p5-namespace-clean>=0.20 \
		devel/p5-Sub-Identify

TEST_DEPENDS =	devel/p5-Moo \
		devel/p5-Moose \
		devel/p5-MooseX-Role-WithOverloading \
		devel/p5-Mouse \
		devel/p5-Sub-Install \
		devel/p5-Sub-Name \
		devel/p5-Test-Needs

.include <bsd.port.mk>
