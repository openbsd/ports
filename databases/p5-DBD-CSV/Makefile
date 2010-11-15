# $OpenBSD: Makefile,v 1.11 2010/11/15 00:22:52 espie Exp $

COMMENT=	perl DBI driver for CSV files

DISTNAME=	DBD-CSV-0.22
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	STEM->=1.08:databases/p5-DBI \
		STEM->0.22:textproc/p5-Text-CSV_XS \
		databases/p5-SQL-Statement

.include <bsd.port.mk>
