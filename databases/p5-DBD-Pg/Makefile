# $OpenBSD: Makefile,v 1.25 2001/05/10 19:20:43 naddy Exp $

COMMENT=	"access to PostgreSQL databases through the DBI"

COMMENT=	"access to PostgreSQL databases through the DBI"

DISTNAME=	DBD-Pg-0.95
PKGNAME=	p5-DBD-Pg-0.95
CATEGORIES=	databases perl5
NEED_VERSION=	1.407
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= DBD

LIB_DEPENDS=	pq.2::databases/postgresql
BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/DBI.pm::databases/p5-DBI

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
