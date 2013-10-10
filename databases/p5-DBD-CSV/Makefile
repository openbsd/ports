# $OpenBSD: Makefile,v 1.16 2013/10/10 02:08:20 brad Exp $

COMMENT=	perl DBI driver for CSV files

DISTNAME=	DBD-CSV-0.31
REVISION=	0
EXTRACT_SUFX=	.tgz
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF=	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes

CPAN_AUTHOR=	HMBRAND

RUN_DEPENDS=	databases/p5-DBI>=1.613 \
		textproc/p5-Text-CSV_XS>0.71 \
		databases/p5-SQL-Statement>=1.30

.include <bsd.port.mk>
