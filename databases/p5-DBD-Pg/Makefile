# New ports collection makefile for:    p5-DBD-Pg
# Version required:			0.62
# Date created:				June 17th 1997
# Whom:	      				James FitzGibbon <jfitz@FreeBSD.org>
#
#   $Id: Makefile,v 1.1.1.1 1998/03/24 18:39:37 mickey Exp $
#

DISTNAME=	DBD-Pg-0.62
PKGNAME=	p5-DBD-Pg-0.62
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

MAINTAINER=	jfitz@FreeBSD.ORG

BUILD_DEPENDS=	/usr/lib/perl5/site_perl/DBI.pm:${PORTSDIR}/databases/p5-DBI \
		${PREFIX}/lib/libpq.so.1.1:${PORTSDIR}/databases/postgresql
CONFIGURE_ENV+=	"POSTGRES_HOME=${PREFIX}"

USE_PERL5=	YES

MAN3=		DBD::Pg.3

do-configure:
		@cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
