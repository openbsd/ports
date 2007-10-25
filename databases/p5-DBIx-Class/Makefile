# $OpenBSD: Makefile,v 1.9 2007/10/25 21:26:47 simon Exp $

COMMENT= 	object-oriented database access

MODULES=	cpan
DISTNAME=	DBIx-Class-0.08007
CATEGORIES=	databases devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	::devel/p5-Class-Data-Accessor \
		:p5-Data-Page->=2.00:databases/p5-Data-Page \
		:p5-Class-C3->=0.13:devel/p5-Class-C3 \
		::devel/p5-Class-C3-Componentised \
		::devel/p5-Carp-Clan \
		::devel/p5-Module-Find \
		::databases/p5-SQL-Abstract \
		::databases/p5-SQL-Abstract-Limit \
		::databases/p5-DBI \
		::devel/p5-Class-Inspector \
		::devel/p5-Class-Accessor-Grouped \
		::devel/p5-Scope-Guard \
		::converters/p5-JSON

REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::devel/p5-PadWalker \
		::devel/p5-Test-Memory-Cycle \
		::textproc/p5-Text-CSV_XS \
		::devel/p5-DateTime-Format-MySQL \
		::databases/p5-SQL-Translator

MAKE_ENV=	DATA_DUMPER_TEST=Yes \
		DBICTEST_FORK_STRESS=Yes \
		TEST_POD=Yes \
		DBICTEST_PG_DSN='dbi:Pg:dbname=test;host=localhost' \
		DBICTEST_PG_USER=postgres \
		DBICTEST_PG_PASS= \
		DBICTEST_MYSQL_DSN='dbi:mysql:database=test;host=localhost' \
		DBICTEST_MYSQL_USER=root \
		DBICTEST_MYSQL_PASS=


.include <bsd.port.mk>
