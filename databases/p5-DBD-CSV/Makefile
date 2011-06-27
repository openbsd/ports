# $OpenBSD: Makefile,v 1.14 2011/06/27 18:41:53 jasper Exp $

COMMENT=	perl DBI driver for CSV files

DISTNAME=	DBD-CSV-0.31
EXTRACT_SUFX=	.tgz
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF=	Yes

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CPAN_AUTHOR=	HMBRAND

RUN_DEPENDS=	databases/p5-DBI>=1.613 \
		textproc/p5-Text-CSV_XS>0.71 \
		databases/p5-SQL-Statement>=1.30

.include <bsd.port.mk>
