# $OpenBSD: Makefile,v 1.18 2014/05/15 14:06:59 afresh1 Exp $

COMMENT =	perl DBI driver for CSV files

DISTNAME =	DBD-CSV-0.41
EXTRACT_SUFX =	.tgz
CATEGORIES =	databases
MODULES =	cpan

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBI>=0.42 \
		databases/p5-DBI>=1.628 \
		databases/p5-SQL-Statement>=1.405 \
		textproc/p5-Text-CSV_XS>=1.01

.include <bsd.port.mk>
