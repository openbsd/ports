# $OpenBSD: Makefile,v 1.25 2021/01/03 22:27:42 afresh1 Exp $

COMMENT =	DBI driver for CSV files

DISTNAME =	DBD-CSV-0.57
EXTRACT_SUFX =	.tgz
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	databases/p5-DBI>=1.628 \
		databases/p5-SQL-Statement>=1.405 \
		textproc/p5-Text-CSV_XS>=1.01

.include <bsd.port.mk>
