# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:16 naddy Exp $

COMMENT =		shared core for D1 and D2 Database plugins

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer-Plugin-Database-Core-0.13
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		databases/p5-DBI

TEST_DEPENDS +=		devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
