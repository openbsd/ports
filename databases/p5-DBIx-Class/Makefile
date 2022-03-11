COMMENT =	extensible and flexible object relational mapper

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBIx-Class-0.082842
CATEGORIES =	databases devel

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	databases/p5-DBI>=1.57 \
		databases/p5-SQL-Abstract-Classic>=1.91 \
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
		devel/p5-Moo>=2.0 \
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
TEST_DEPENDS +=	converters/p5-Cpanel-JSON-XS \
		converters/p5-JSON \
		converters/p5-JSON-Any \
		converters/p5-JSON-DWIW \
		converters/p5-JSON-XS \
		databases/p5-Class-DBI \
		databases/p5-SQL-Translator>=0.11018 \
		devel/p5-DateTime>=0.55 \
		devel/p5-DateTime-Format-MySQL \
		devel/p5-DateTime-Format-Pg>=0.16004 \
		devel/p5-DateTime-Format-SQLite \
		devel/p5-DateTime-Format-Strptime>=1.2 \
		devel/p5-Getopt-Long-Descriptive>=0.081 \
		devel/p5-Moose>=0.98 \
		devel/p5-MooseX-Types>=0.21 \
		devel/p5-MooseX-Types-LoadableClass>=0.011 \
		devel/p5-MooseX-Types-Path-Class>=0.05 \
		devel/p5-Time-Piece-MySQL \
		math/p5-Math-Base36>=0.07 \
		textproc/p5-Text-CSV>=1.16

# More tests can be enabled by porting
# * p5-Class-DBI-Plugin-DeepAbstractSearch
# * p5-MooseX-Types-JSON
# * p5-Test-Moose

MAKE_ENV =	RELEASE_TESTING=Yes \
		TEST_POD=Yes

DATABASE =	dbix_class_test

MODULES +=	databases/postgresql
MODPOSTGRESQL_TEST_DBNAME =    ${DATABASE}
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=${DATABASE}' \
		DBICTEST_PG_USER=${USER} \
		DBICTEST_PG_PASS=1
TEST_DEPENDS += databases/p5-DBD-Pg

MODULES +=	databases/mariadb
MODMARIADB_TEST_DBNAME =	${DATABASE}
MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=${DATABASE};mysql_socket=${MODMARIADB_TEST_SOCKET}' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=1
TEST_DEPENDS += databases/p5-DBD-mysql

MODPOSTGRESQL_TEST_CMD =	${MODMARIADB_TEST_TARGET}
do-test:
	${MODPOSTGRESQL_TEST_TARGET}

.include <bsd.port.mk>
