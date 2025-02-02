COMMENT =	SQL DDL transformations and more

DISTNAME =	SQL-Translator-1.66
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

HOMEPAGE =	https://sqlfairy.sourceforge.net/

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_ARGS =	--skipdeps

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

RUN_DEPENDS =	databases/p5-DBI>=1.54 \
		devel/p5-Carp-Clan \
		devel/p5-File-ShareDir>=1.0 \
		devel/p5-Moo>=1.000003 \
		devel/p5-Package-Variant>=1.001001 \
		devel/p5-Parse-RecDescent>=1.967009 \
		devel/p5-Sub-Quote \
		devel/p5-Try-Tiny>=0.04

TEST_DEPENDS =	converters/p5-JSON-MaybeXS>=1.003003 \
		devel/p5-Test-Differences \
		devel/p5-Test-Exception>=0.42 \
		devel/p5-YAML>=0.66 \
		textproc/p5-XML-Writer>=0.50

# Optional depends to avoid skipping tests
TEST_DEPENDS += converters/p5-JSON-MaybeXS \
		graphics/p5-GD \
		misc/p5-Spreadsheet-ParseExcel \
		textproc/p5-Template \
		textproc/p5-Text-RecordParser \
		textproc/p5-XML-LibXML \
		databases/p5-DBD-Pg \
		databases/p5-DBD-SQLite \
		www/p5-CGI

MODPOSTGRESQL_TEST_DBNAME =	sql-translator-test
DBICTEST_PG_USER=	${USER} \
		DBICTEST_PG_PASS=1

# If someone ports p5-Graph-Directed, that will enable more tests
# Tests require CGI and CGI::Utils

.include <bsd.port.mk>
