# $OpenBSD: Makefile,v 1.2 2006/11/23 18:46:27 espie Exp $

COMMENT= 	"object-oriented database access"

MODULES=	cpan
DISTNAME=	DBIx-Class-0.07003
CATEGORIES=	databases devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	::devel/p5-Class-Data-Accessor \
		:p5-Data-Page->=2.00:databases/p5-Data-Page \
		:p5-Class-C3->=0.13:devel/p5-Class-C3 \
		::devel/p5-Carp-Clan \
		::databases/p5-SQL-Abstract \
		::databases/p5-SQL-Abstract-Limit \
		::databases/p5-DBI


REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::devel/p5-Class-Inspector \
		::devel/p5-Module-Find \
		::devel/p5-Test-Memory-Cycle \
		::textproc/p5-Text-CSV_XS \
		::devel/p5-DateTime-Format-MySQL \
		::databases/p5-SQL-Translator

MAKE_ENV=	DATA_DUMPER_TEST=Yes \
		DBICTEST_FORK_STRESS=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
