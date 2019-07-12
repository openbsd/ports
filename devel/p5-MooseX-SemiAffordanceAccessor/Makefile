# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:01 sthen Exp $

COMMENT =	name your accessors foo() and set_foo()

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-SemiAffordanceAccessor-0.10
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-Moose

MAKE_ENV +=		TEST_POD=1 IS_MAINTAINER=1

.include <bsd.port.mk>
