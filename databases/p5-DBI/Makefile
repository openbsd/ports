# $OpenBSD: Makefile,v 1.2 1998/10/08 04:33:15 marc Exp $
#

DISTNAME=	DBI-0.93
PKGNAME=	p5-DBI-0.93
CATEGORIES=	databases perl5

BROKEN=		"newer version available"

MAINTAINER=	ports@0penbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBI

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
