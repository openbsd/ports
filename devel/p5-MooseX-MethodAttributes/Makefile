# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:19 espie Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
DISTNAME =	MooseX-MethodAttributes-0.25
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-clean

TEST_DEPENDS =devel/p5-MooseX-Role-Parameterized \
		devel/p5-Test-Exception \
		devel/p5-namespace-autoclean

.include <bsd.port.mk>
