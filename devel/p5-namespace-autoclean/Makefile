# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:24 espie Exp $

COMMENT =	keep imports out of your namespace

MODULES =	cpan
DISTNAME =	namespace-autoclean-0.13
CATEGORIES =	devel

MAINTAINER =	Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Class-MOP \
		devel/p5-namespace-clean>=0.20

TEST_DEPENDS = devel/p5-Moose \
		  devel/p5-Sub-Name

.include <bsd.port.mk>
