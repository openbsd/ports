# $OpenBSD: Makefile,v 1.13 2000/03/14 05:08:47 turan Exp $

DISTNAME=	DBD-Pg-0.93
PKGNAME=	p5-DBD-Pg-0.93
CATEGORIES=	databases perl5
NEED_VERSION=	1.223

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

BUILD_DEPENDS=	/usr/local/libdata/perl5/site_perl/i386-openbsd/DBI.pm:databases/p5-DBI \
		pq.1.:databases/postgresql

CONFIGURE_ENV+=	"POSTGRES_HOME=${PREFIX}/pgsql"

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
