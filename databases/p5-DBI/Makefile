# $OpenBSD: Makefile,v 1.6 1999/08/18 02:34:30 angelos Exp $

DISTNAME=	DBI-1.13
PKGNAME=	p5-DBI-1.13
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= DBI

MAINTAINER=	ports@openbsd.org

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
