# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:17 naddy Exp $

COMMENT =		easy database connections for Dancer2 applications

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Database-2.13
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.151000 \
			www/p5-Dancer-Plugin-Database-Core

TEST_DEPENDS =		databases/p5-DBD-SQLite \
			www/p5-HTTP-Message \
			www/p5-Plack>=1.0032 \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod \
			devel/p5-Import-Into

.include <bsd.port.mk>
