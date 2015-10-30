# $OpenBSD: Makefile,v 1.1.1.1 2015/10/30 16:52:04 landry Exp $

COMMENT =		dbd-pg wrapper for mojolicious

MODULES =		cpan databases/postgresql
DISTNAME =		Mojo-Pg-2.14
CATEGORIES =		databases
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

#Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		SRI

RUN_DEPENDS =		databases/p5-DBD-Pg>=3.5.1 \
			www/p5-Mojo>=6

MODPOSTGRESQL_TEST_DBNAME =	testdb
TEST_FLAGS =		TEST_ONLINE=postgresql:///${MODPOSTGRESQL_TEST_DBNAME}

.include <bsd.port.mk>
