# $OpenBSD: Makefile,v 1.8 2015/01/19 14:14:55 benoit Exp $

COMMENT =	keep imports out of your namespace

MODULES =	cpan
DISTNAME =	namespace-autoclean-0.24
CATEGORIES =	devel

MAINTAINER =	Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Moose>=2.1204 \
		devel/p5-namespace-clean>=0.20

TEST_DEPENDS = devel/p5-Moose \
		  devel/p5-Sub-Name

.include <bsd.port.mk>
