# $OpenBSD: Makefile,v 1.24 2019/07/12 20:43:56 sthen Exp $

COMMENT =	extensible and flexible object relational mapper

MODULES =	cpan databases/postgresql databases/mariadb
PKG_ARCH =	*
DISTNAME =	DBIx-Class-0.082820
CATEGORIES =	databases devel
REVISION =	1

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic
PERMIT_PACKAGE =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	databases/p5-DBI>=1.57 \
		databases/p5-Data-Page>=2.00 \
		databases/p5-SQL-Abstract>=1.81 \
		devel/p5-Class-Accessor-Grouped>=0.10012 \
		devel/p5-Class-C3-Componentised>=1.0009 \
		devel/p5-Class-Inspector>=1.24 \
		devel/p5-Config-Any>=0.20 \
		devel/p5-Context-Preserve>=0.01 \
		devel/p5-Data-Dumper-Concise>=2.020 \
		devel/p5-Devel-GlobalDestruction>=0.09 \
		devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.12 \
		devel/p5-Module-Find>=0.07 \
		devel/p5-Moo>=2.000 \
		devel/p5-Path-Class>=0.18 \
		devel/p5-Scope-Guard>=0.03 \
		devel/p5-Sub-Name>=0.04 \
		devel/p5-Try-Tiny>=0.07 \
		devel/p5-namespace-clean>=0.24

TEST_DEPENDS =	databases/p5-DBD-SQLite>=1.29 \
		devel/p5-Package-Stash>=0.28 \
		devel/p5-Test-Deep>=0.101 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0.21

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	converters/p5-JSON-Any \
		devel/p5-Getopt-Long-Descriptive \
		devel/p5-Module-Pluggable \
		devel/p5-Sys-SigAction \
		math/p5-Math-Base36 \
		textproc/p5-Text-CSV \
		databases/p5-Class-DBI \
		databases/p5-SQL-Translator>=0.11018

TEST_DEPENDS +=	devel/p5-DateTime-Format-MySQL \
		devel/p5-DateTime-Format-Pg \
		devel/p5-DateTime-Format-SQLite \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Time-Piece-MySQL

TEST_DEPENDS +=	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-MooseX-Types-LoadableClass \
		devel/p5-MooseX-Types-Path-Class

# More tests can be enabled by porting
# * p5-Class-DBI-Plugin-DeepAbstractSearch
# * p5-Cpanel-JSON-XS
# * p5-MooseX-Types-JSON

MAKE_ENV =	RELEASE_TESTING=Yes \
		TEST_POD=Yes

DATABASE =	dbix_class_test

MODPOSTGRESQL_TEST_DBNAME =    ${DATABASE}
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=${DATABASE}' \
		DBICTEST_PG_USER=${USER} \
		DBICTEST_PG_PASS=1
TEST_DEPENDS += databases/p5-DBD-Pg

MODMARIADB_TEST_DBNAME =	${DATABASE}
MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=${DATABASE};mysql_socket=${MODMARIADB_TEST_SOCKET}' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=1
TEST_DEPENDS += databases/p5-DBD-mysql

MODPOSTGRESQL_TEST_CMD =	${MODMARIADB_TEST_TARGET}
do-test:
	${MODPOSTGRESQL_TEST_TARGET}

.include <bsd.port.mk>
