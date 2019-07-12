# $OpenBSD: Makefile,v 1.22 2019/07/12 20:43:55 sthen Exp $

COMMENT =	DBI driver for CSV files

DISTNAME =	DBD-CSV-0.54
EXTRACT_SUFX =	.tgz
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBI>=1.628 \
		databases/p5-SQL-Statement>=1.405 \
		textproc/p5-Text-CSV_XS>=1.01

# Additional dependencies to avoid skipping tests
# If someone ports DBI-Test, we will get more testing
TEST_DEPENDS +=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
