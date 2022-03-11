COMMENT =	create a DBIx::Class::Schema based on a database

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBIx-Class-Schema-Loader-0.07049
CATEGORIES =	databases

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBIx-Class>=0.08127 \
		devel/p5-curry>=1.0 \
		devel/p5-Carp-Clan \
		devel/p5-Class-Accessor-Grouped>=0.10008 \
		devel/p5-Class-C3-Componentised>=1.0008 \
		devel/p5-Class-Inspector>=1.27 \
		devel/p5-Class-Unload>=0.07 \
		devel/p5-Data-Dump>=1.06 \
		devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.09 \
		devel/p5-Scope-Guard>=0.20 \
		devel/p5-Try-Tiny \
		devel/p5-namespace-clean>=0.23 \
		textproc/p5-Lingua-EN-Inflect-Number>=1.1 \
		textproc/p5-Lingua-EN-Inflect-Phrase>=0.15 \
		textproc/p5-Lingua-EN-Tagger>=0.23 \
		textproc/p5-String-ToIdentifier-EN>=0.05

TEST_DEPENDS =	databases/p5-DBD-SQLite>=1.29 \
		devel/p5-Test-Deep>=0.107 \
		devel/p5-Test-Differences>=0.60 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0.21

MAKE_ENV =	SCHEMA_LOADER_TESTS_BACKCOMPAT=Yes \
		TEST_POD=Yes

DATABASE =	dbix_class_schema_loader_test

MODULES +=	databases/postgresql
MODPOSTGRESQL_TEST_DBNAME =	${DATABASE}
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=${DATABASE}' \
	DBICTEST_PG_USER=${USER} \
	DBICTEST_PG_PASS=1
TEST_DEPENDS += databases/p5-DBD-Pg

MODULES +=	databases/mariadb
MODMARIADB_TEST_DBNAME =	${DATABASE}
MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=${DATABASE};mysql_socket=${MODMARIADB_TEST_SOCKET}' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=1 \
		DBICTEST_MYSQL_INNODB=1
TEST_DEPENDS += databases/p5-DBD-mysql

MODPOSTGRESQL_TEST_CMD =	${MODMARIADB_TEST_TARGET}
do-test:
	${MODPOSTGRESQL_TEST_TARGET}

.include <bsd.port.mk>
