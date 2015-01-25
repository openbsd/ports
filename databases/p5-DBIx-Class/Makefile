# $OpenBSD: Makefile,v 1.19 2015/01/25 20:08:33 afresh1 Exp $

COMMENT =	extensible and flexible object relational mapper

MODULES =	cpan databases/postgresql
DISTNAME =	DBIx-Class-0.082810
CATEGORIES =	databases devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	databases/p5-DBI>=1.57 \
		databases/p5-Data-Page>=2.00 \
		databases/p5-SQL-Abstract>=1.77 \
		devel/p5-Class-Accessor-Grouped>=0.10010 \
		devel/p5-Class-C3-Componentised>=1.0009 \
		devel/p5-Class-Inspector>=1.24 \
		devel/p5-Config-Any>=0.20 \
		devel/p5-Context-Preserve>=0.01 \
		devel/p5-Data-Compare>=1.22 \
		devel/p5-Data-Dumper-Concise>=2.020 \
		devel/p5-Devel-GlobalDestruction>=0.09 \
		devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.12 \
		devel/p5-Module-Find>=0.07 \
		devel/p5-Moo>=1.002 \
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
		databases/p5-Class-DBI

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

MYSQLDATA =	${WRKDIR}/mysql-data
MYSQLSOCKET =	${WRKDIR}/mysql.sock
MYSQLADMIN =	${LOCALBASE}/bin/mysqladmin --socket=${MYSQLSOCKET} --user=root

MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=${DATABASE};mysql_socket=${MYSQLSOCKET}' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=
TEST_DEPENDS += databases/p5-DBD-mysql \
		databases/mariadb,-server

do-test:
	-test -e ${MYSQLSOCKET} && ${MYSQLADMIN} shutdown
	rm -Rf ${MYSQLDATA}
	${LOCALBASE}/bin/mysql_install_db --datadir=${MYSQLDATA}
	${LOCALBASE}/bin/mysqld_safe --datadir=${MYSQLDATA} \
	    --pid-file=${WRKDIR}/mysql.pid --socket=${MYSQLSOCKET} &
	while [ "$$t" -lt 5 ] && ! ${MYSQLADMIN} status 2>/dev/null; do \
		sleep 1; t=$$(($$t+1)); \
	done
	${MYSQLADMIN} create ${DATABASE} || (${MYSQLADMIN} shutdown; exit 1)
	trap '${MYSQLADMIN} shutdown' 0 1 2 15; \
	${MODPOSTGRESQL_TEST_TARGET}

.include <bsd.port.mk>
