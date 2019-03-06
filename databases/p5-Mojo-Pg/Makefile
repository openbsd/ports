# $OpenBSD: Makefile,v 1.5 2019/03/06 14:23:54 sthen Exp $

COMMENT =		dbd-pg wrapper for mojolicious

MODULES =		cpan databases/postgresql
PKG_ARCH =		*
DISTNAME =		Mojo-Pg-4.13
CPAN_AUTHOR =		SRI
CATEGORIES =		databases
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

#Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		databases/p5-DBD-Pg>=3.5.1 \
			databases/p5-SQL-Abstract>=1.86 \
			www/p5-Mojo>=8.03

MODPOSTGRESQL_TEST_DBNAME =	testdb
TEST_FLAGS =		TEST_ONLINE=postgresql:///${MODPOSTGRESQL_TEST_DBNAME}

.include <bsd.port.mk>
