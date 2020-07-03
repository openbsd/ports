# $OpenBSD: Makefile,v 1.23 2020/07/03 21:44:36 sthen Exp $

COMMENT=	dynamic definition of a DBIx::Class::Schema

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBIx-Class-Schema-Loader-0.07015
REVISION=	2
CATEGORIES=	databases

MAINTAINER=	Andrew Fresh <afresh1@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBIx-Class \
		databases/p5-DBIx-Class-IntrospectableM2M \
		devel/p5-Carp-Clan \
		devel/p5-Class-Unload \
		devel/p5-Data-Dump \
		devel/p5-List-MoreUtils \
		p5-Universal-exports-<0.05|p5-Universal-require->=0.11:devel/p5-Universal-require \
		textproc/p5-Lingua-EN-Inflect \
		textproc/p5-Lingua-EN-Inflect-Phrase \
		textproc/p5-Lingua-EN-Inflect-Number \
		textproc/p5-Lingua-EN-Tagger \
		textproc/p5-String-ToIdentifier-EN \
		textproc/p5-String-CamelCase

BUILD_DEPENDS=	${RUN_DEPENDS} \
		databases/p5-DBD-SQLite \
		devel/p5-Test-Warn \
		devel/p5-Task-Weaken \
		devel/p5-Try-Tiny
TEST_DEPENDS=devel/p5-Config-Any \
		devel/p5-Config-General \
		databases/p5-DBD-SQLite \
		databases/p5-DBI \
		devel/p5-Moose \
		devel/p5-MooseX-MarkAsMethods \
		devel/p5-MooseX-NonMoose \
		devel/p5-Test-Exception \
		devel/p5-Test-Warn \
		devel/p5-namespace-autoclean

MAKE_ENV=	SCHEMA_LOADER_TESTS_BACKCOMPAT=Yes \
		TEST_POD=Yes

TEST_PG ?=	No
.if ${TEST_PG:L:Myes}
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=test;host=localhost' \
		DBICTEST_PG_USER=postgres \
		DBICTEST_PG_PASS=
TEST_DEPENDS +=	databases/p5-DBD-Pg
.endif

TEST_MYSQL ?=	No
.if ${TEST_MYSQL:L:Myes}
MAKE_ENV +=	DBICTEST_MYSQL_DSN='dbi:mysql:database=test;host=localhost' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS= \
		DBICTEST_MYSQL_INNODB=1
TEST_DEPENDS +=	databases/p5-DBD-mysql
.endif

.include <bsd.port.mk>
