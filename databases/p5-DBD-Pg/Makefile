# $OpenBSD: Makefile,v 1.10 2000/02/16 05:16:47 turan Exp $

BROKEN=		does not build, install target does not exist.

DISTNAME=	DBD-Pg-0.93
PKGNAME=	p5-DBD-Pg-0.93
CATEGORIES=	databases perl5

MAINTAINER=	kevlo@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

BUILD_DEPENDS=	/usr/local/libdata/perl5/site_perl/i386-openbsd/DBI.pm: \
                ${PORTSDIR}/databases/p5-DBI \
		pq.1.:${PORTSDIR}/databases/postgresql

CONFIGURE_ENV+=	"POSTGRES_HOME=${PREFIX}/pgsql"

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
