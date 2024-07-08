COMMENT =	DBI wrapper and abstraction layer


DISTNAME =	Rose-DB-0.785
FIX_EXTRACT_PERMISSIONS =	Yes

CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		databases/p5-DBI \
			databases/p5-Rose-DateTime>=0.532 \
			databases/p5-Rose-Object>=0.854 \
			databases/p5-SQL-ReservedWords \
			devel/p5-Clone \
			devel/p5-DateTime \
			devel/p5-DateTime-Format-MySQL \
			devel/p5-DateTime-Format-Oracle \
			devel/p5-DateTime-Format-Pg>=0.11 \
			devel/p5-Time-Clock \
			math/p5-Bit-Vector>=6.4

TEST_DEPENDS =		databases/p5-DBD-MariaDB \
			databases/p5-DBD-Pg \
			databases/p5-DBD-SQLite \
			databases/p5-DBD-mysql \
			devel/p5-Test-Pod>=1.00 \
			devel/p5-YAML-Syck

TEST_FLAGS =		AUTOMATED_TESTING=1

PKG_ARCH =		*

post-build:
		find ${WRKBUILD}/blib -type f -name '*${PATCHORIG}' -delete

.include <bsd.port.mk>
