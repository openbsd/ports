# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:52 sthen Exp $

COMMENT =		shared core for D1 and D2 Database plugins

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer-Plugin-Database-Core-0.13
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		databases/p5-DBI

TEST_DEPENDS +=		devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
