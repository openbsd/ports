# $OpenBSD: Makefile,v 1.17 2019/07/12 20:43:58 sthen Exp $

COMMENT =	SQL DDL transformations and more

DISTNAME =	SQL-Translator-0.11021
CATEGORIES =	databases
MODULES =	cpan databases/postgresql
PKG_ARCH =	*

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

HOMEPAGE =	http://sqlfairy.sourceforge.net/

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS =	databases/p5-DBI>=1.54 \
		devel/p5-Carp-Clan>=0 \
		devel/p5-File-ShareDir>=1.0 \
		devel/p5-List-MoreUtils>=0.09 \
		devel/p5-Moo>=0 \
		devel/p5-Package-Variant>=1.001001 \
		devel/p5-Parse-RecDescent>=1.967009 \
		devel/p5-Try-Tiny>=0.04

TEST_DEPENDS =	converters/p5-JSON>=2.0 \
		devel/p5-Test-Differences>=0 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-YAML>=0.66 \
		textproc/p5-XML-Writer>=0.500

# Optional depends to avoid skipping tests
TEST_DEPENDS += graphics/p5-GD \
		misc/p5-Spreadsheet-ParseExcel \
		textproc/p5-Template \
		textproc/p5-Text-RecordParser \
		textproc/p5-XML-LibXML \
		databases/p5-DBD-Pg \
		databases/p5-DBD-SQLite

MODPOSTGRESQL_TEST_DBNAME =	sql-translator-test
MAKE_ENV +=	DBICTEST_PG_DSN='dbi:Pg:dbname=${MODPOSTGRESQL_TEST_DBNAME}' \
		DBICTEST_PG_USER=${USER} \
		DBICTEST_PG_PASS=1

# If someone ports p5-Graph-Directed, that will enable more tests
# Tests require CGI and CGI::Utils

.include <bsd.port.mk>
