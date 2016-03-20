# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:42 naddy Exp $

COMMENT =	keep imports out of your namespace

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	namespace-autoclean-0.28
CATEGORIES =	devel

MAINTAINER =	Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Moose>=2.1204 \
		devel/p5-namespace-clean>=0.20 \
		devel/p5-Sub-Identify

TEST_DEPENDS = devel/p5-Moose \
		  devel/p5-Sub-Name

.include <bsd.port.mk>
