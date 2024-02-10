COMMENT =	extension of SQL::Abstract with more constructs

DISTNAME =	SQL-Abstract-More-1.42

CATEGORIES =	databases

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-SQL-Abstract-Classic \
			devel/p5-MRO-Compat \
			devel/p5-Params-Validate \
			devel/p5-namespace-clean
TEST_DEPENDS =		devel/p5-List-MoreUtils \
			devel/p5-Test-Exception

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=yes

PKG_ARCH =		*

.include <bsd.port.mk>
