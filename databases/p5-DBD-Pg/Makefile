# $OpenBSD: Makefile,v 1.6 1999/04/01 06:20:05 brad Exp $

DISTNAME=	DBD-Pg-0.69
PKGNAME=	p5-DBD-Pg-0.69
CATEGORIES=	databases perl5

#BROKEN=	"newer version available"

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

BUILD_DEPENDS=	/usr/lib/perl5/site_perl/DBI.pm:${PORTSDIR}/databases/p5-DBI \
		pq.1.:${PORTSDIR}/databases/postgresql

CONFIGURE_ENV+=	"POSTGRES_HOME=${PREFIX}/pgsql"

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
