# $OpenBSD: Makefile,v 1.23 2001/04/23 12:38:17 peter Exp $

COMMENT=	"access to PostgreSQL databases through the DBI"

DISTNAME=	DBD-Pg-0.95
PKGNAME=	p5-DBD-Pg-0.95
CATEGORIES=	databases perl5
NEED_VERSION=	1.405
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= DBD

LIB_DEPENDS=	pq.2::databases/postgresql
BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/DBI.pm::databases/p5-DBI

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/libl" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
