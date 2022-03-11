COMMENT =	DBI driver for CSV files

DISTNAME =	DBD-CSV-0.58
EXTRACT_SUFX =	.tgz
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

# The build complains and waits without this:
BUILD_DEPENDS =	databases/p5-DBI>=1.628

RUN_DEPENDS =	databases/p5-DBI>=1.628 \
		databases/p5-SQL-Statement>=1.405 \
		textproc/p5-Text-CSV_XS>=1.01

.include <bsd.port.mk>
