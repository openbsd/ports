# $OpenBSD: Makefile,v 1.5 1999/05/14 04:54:31 brad Exp $

DISTNAME=	DBI-1.07
PKGNAME=	p5-DBI-1.07
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= DBI

MAINTAINER=	ports@openbsd.org

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
