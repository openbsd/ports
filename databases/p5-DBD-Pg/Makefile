# $OpenBSD: Makefile,v 1.7 1999/11/03 01:01:25 turan Exp $

BROKEN=		dependency databases/postgresql is also broken

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
