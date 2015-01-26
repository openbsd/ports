# $OpenBSD: Makefile,v 1.1.1.1 2015/01/26 18:47:52 benoit Exp $

COMMENT =		easy database connections for Dancer2 applications

MODULES =		cpan
DISTNAME =		Dancer2-Plugin-Database-2.12
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
			devel/p5-Test-Pod

.include <bsd.port.mk>
