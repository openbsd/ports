# $OpenBSD: Makefile,v 1.18 2000/06/28 12:08:35 espie Exp $

DISTNAME=	DBD-Pg-0.93
PKGNAME=	p5-DBD-Pg-0.93
CATEGORIES=	databases perl5
NEED_VERSION=	 1.302

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DBD

BUILD_DEPENDS= /usr/local/libdata/perl5/site_perl/i386-openbsd/DBI.pm::databases/p5-DBI 
LIB_DEPENDS= pq.2.::databases/postgresql
CONFIGURE_STYLE=	perl

MAKE_ENV+=	"POSTGRES_HOME=${PREFIX}/pgsql"

.include <bsd.port.mk>
