# $OpenBSD: Makefile,v 1.4 1999/04/01 06:20:06 brad Exp $

DISTNAME=	DBI-0.93
PKGNAME=	p5-DBI-0.93
CATEGORIES=	databases perl5

#BROKEN=	"newer version available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBI

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
