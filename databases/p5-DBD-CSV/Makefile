# $OpenBSD: Makefile,v 1.1.1.1 2003/05/29 18:17:47 avsm Exp $

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
BUILD_DEPENDS=	:p5-DBI->=1.08:databases/p5-DBI \
		:p5-Text-CSV_XS->0.22:textproc/p5-Text-CSV_XS \
		::databases/p5-SQL-Statement \
		::databases/p5-DBI
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
