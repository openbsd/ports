# $OpenBSD: Makefile,v 1.62 2011/09/16 08:48:03 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	access to PostgreSQL databases through the DBI

MODULES=	cpan
DISTNAME=	DBD-Pg-2.18.0
CATEGORIES=	databases
REVISION =	0

LIB_DEPENDS=	databases/postgresql
RUN_DEPENDS=	databases/p5-DBI>=1.52
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=databases/postgresql,-server \
		devel/p5-Test-Warn
WANTLIB +=	pq>=2

REGRESS_FLAGS=	DBI_DSN="dbi:Pg:dbname=template1" DBI_USER="_postgresql" \
		DBI_PASS=""

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	m

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

.include <bsd.port.mk>
