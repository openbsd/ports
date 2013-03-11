# $OpenBSD: Makefile,v 1.18 2013/03/11 02:52:06 espie Exp $

COMMENT=	object-oriented database access

MODULES=	cpan
DISTNAME=	DBIx-Class-0.08196
REVISION=	0
CATEGORIES=	databases devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS=--skipdeps

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/p5-Carp-Clan \
		devel/p5-Class-Accessor-Grouped \
		devel/p5-Class-C3-Componentised>=1.0009 \
		devel/p5-Class-C3>=0.13 \
		devel/p5-Class-Data-Accessor \
		devel/p5-Class-Inspector \
		devel/p5-Config-Any \
		devel/p5-Context-Preserve \
		devel/p5-Data-Compare \
		devel/p5-Data-Dumper-Concise \
		databases/p5-Data-Page>=2.00 \
		databases/p5-DBI \
		converters/p5-JSON \
		devel/p5-Hash-Merge \
		devel/p5-Module-Find \
		devel/p5-namespace-clean \
		devel/p5-Path-Class \
		devel/p5-Scope-Guard \
		databases/p5-SQL-Abstract \
		databases/p5-SQL-Abstract-Limit \
		devel/p5-Sub-Name \
		devel/p5-Try-Tiny \
		devel/p5-Variable-Magic

TEST_DEPENDS=databases/p5-DBD-SQLite \
		devel/p5-PadWalker \
		devel/p5-Test-Memory-Cycle \
		devel/p5-Test-Warn \
		textproc/p5-Text-CSV_XS \
		devel/p5-DateTime-Format-MySQL \
		databases/p5-SQL-Translator

MAKE_ENV=	DATA_DUMPER_TEST=Yes \
		DBICTEST_FORK_STRESS=Yes \
		RELEASE_TESTING=Yes \
		TEST_POD=Yes

TEST_PG ?=	No
.if ${TEST_PG:L:Myes}
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=test;host=localhost' \
		DBICTEST_PG_USER=postgres \
		DBICTEST_PG_PASS=
TEST_DEPENDS += databases/p5-DBD-Pg
.endif

TEST_MYSQL ?=	No
.if ${TEST_MYSQL:L:Myes}
MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=test;host=localhost' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=
TEST_DEPENDS += databases/p5-DBD-mysql
.endif

.include <bsd.port.mk>
