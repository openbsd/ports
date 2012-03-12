# $OpenBSD: Makefile,v 1.64 2012/03/12 13:29:19 pea Exp $

SHARED_ONLY=	Yes

COMMENT=	access to PostgreSQL databases through the DBI

MODULES=	cpan
DISTNAME=	DBD-Pg-2.19.0
CATEGORIES=	databases

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
