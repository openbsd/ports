# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:33 naddy Exp $

COMMENT =		return across multiple call levels

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Return-MultiLevel-0.04
CATEGORIES =		devel

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MAUKE

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-Data-Munge

TEST_DEPENDS =		devel/p5-Test-Fatal

.include <bsd.port.mk>
