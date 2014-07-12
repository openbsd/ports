# $OpenBSD: Makefile,v 1.14 2014/07/12 12:36:09 afresh1 Exp $

COMMENT =	database schema manipulation

DISTNAME =	SQL-Translator-0.11018
CATEGORIES =	databases devel
MODULES =	cpan

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

HOMEPAGE =	http://sqlfairy.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS =        --skipdeps

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
		textproc/p5-XML-LibXML 

# If someone ports p5-Graph-Directed, that will enable more tests

.include <bsd.port.mk>
