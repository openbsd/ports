# $OpenBSD: Makefile,v 1.50 2009/05/06 22:22:56 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	access to PostgreSQL databases through the DBI

MODULES=	cpan
DISTNAME=	DBD-Pg-2.13.0
CATEGORIES=	databases

LIB_DEPENDS=	pq.>=2:postgresql-client-*:databases/postgresql
RUN_DEPENDS=	::databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=:postgresql-server-*:databases/postgresql,-server \
		::devel/p5-Test-Warn

REGRESS_FLAGS=	DBI_DSN="dbi:Pg:dbname=template1" DBI_USER="_postgresql" \
		DBI_PASS=""

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

.include <bsd.port.mk>
