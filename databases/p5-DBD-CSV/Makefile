# $OpenBSD: Makefile,v 1.3 2004/06/26 07:35:06 xsa Exp $

COMMENT=	"perl DBI driver for CSV files"

DISTNAME=	DBD-CSV-0.2002
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5 

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

CONFIGURE_STYLE=perl
RUN_DEPENDS=	:p5-DBI->=1.08:databases/p5-DBI \
		:p5-Text-CSV_XS->0.22:textproc/p5-Text-CSV_XS \
		::databases/p5-SQL-Statement
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
