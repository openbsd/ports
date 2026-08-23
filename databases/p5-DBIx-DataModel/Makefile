COMMENT =	classes and UML-style associations on top of DBI

DISTNAME =	DBIx-DataModel-3.14
CPAN_AUTHOR =	DAMI

CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-DBI \
			databases/p5-SQL-Abstract-Classic>=1.91 \
			databases/p5-SQL-Abstract-More>=1.41 \
			devel/p5-Carp-Object \
			devel/p5-Clone \
			devel/p5-Data-Structure-Util \
			devel/p5-List-MoreUtils \
			devel/p5-MRO-Compat \
			devel/p5-Module-Build \
			devel/p5-Params-Validate \
			devel/p5-Try-Tiny \
			devel/p5-namespace-clean \
			textproc/p5-Lingua-EN-Inflect-Phrase
TEST_DEPENDS =		databases/p5-DBD-Mock>=1.39 \
			databases/p5-DBD-SQLite>=1.38 \
			databases/p5-SQL-Abstract \

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
