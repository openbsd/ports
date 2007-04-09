# $OpenBSD: Makefile,v 1.41 2007/04/09 06:41:17 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	"access to PostgreSQL databases through the DBI"

MODULES=	cpan
VERSION=	1.49
DISTNAME=	DBD-Pg-${VERSION}
CATEGORIES=	databases

LIB_DEPENDS=	pq.>=2:postgresql-client-*:databases/postgresql
RUN_DEPENDS=	::databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=:postgresql-server-*:databases/postgresql,-server

REGRESS_FLAGS+=	DBI_DSN="dbi:Pg:dbname=template1" DBI_USER="_postgresql" \
		DBI_PASS=""

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

.include <bsd.port.mk>
