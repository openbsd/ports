# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:19 espie Exp $

COMMENT =	name your accessors foo() and set_foo()

MODULES =	cpan
DISTNAME =	MooseX-SemiAffordanceAccessor-0.09
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Moose

MAKE_ENV +=		TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
