# New ports collection makefile for:	p5-DBI
# Version required:			0.93
# Date created:				March 24 1998
# Whom:	      				mickey@openbsd.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/03/24 17:50:16 mickey Exp $
#

DISTNAME=	DBI-0.93
PKGNAME=	p5-DBI-0.93
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBI

MAINTAINER=	ports@0penbsd.org

USE_PERL5=	YES

MAN3=		DBI.3 DBI::W32ODBC.3 DBI::FAQ.3 DBI::DBD.3

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
