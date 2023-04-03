COMMENT =	object-oriented database mapper

DISTNAME =	Rose-DB-Object-0.820
FIX_EXTRACT_PERMISSIONS =	Yes

CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-DBI>=1.40 \
			databases/p5-Rose-DB>=0.782 \
			databases/p5-Rose-DateTime>=0.532 \
			databases/p5-Rose-Object>=0.854 \
			devel/p5-Clone>=0.29 \
			math/p5-Bit-Vector

TEST_DEPENDS =		converters/p5-JSON \
			converters/p5-JSON-XS \
			databases/p5-Class-DBI-AbstractSearch \
			devel/p5-DateTime \
			devel/p5-Test-Differences \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Pod>=1.00 \
			devel/p5-Time-Clock>=1.00 \
			devel/p5-YAML-Syck \
			textproc/p5-Lingua-EN-Inflect \
			databases/p5-DBD-Pg \
			databases/p5-DBD-SQLite \
			databases/p5-DBD-mysql

MAKE_ENV =		TEST_POD=1
TEST_FLAGS =		AUTOMATED_TESTING=1

PKG_ARCH =	*

.include <bsd.port.mk>
