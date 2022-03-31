COMMENT=	ODBC driver for PostgreSQL
VERSION=	13.02.0000
PKGNAME=	postgresql-odbc-${VERSION}
DISTNAME=	psqlodbc-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	https://odbc.postgresql.org/

MAINTAINER=	Paul Irofti <paul@irofti.net>

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://ftp.postgresql.org/pub/odbc/versions/src/

LIB_DEPENDS =		databases/postgresql>=10.3 \
			databases/iodbc

WANTLIB =		crypto iodbc iodbcinst m pq pthread ssl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc

NO_TEST=		Yes

_TESTENV =		PGUSER=postgres \
			PGHOST=localhost \
			PGPASS=password

do-test:
	cd ${WRKSRC}/test; env ${_TESTENV} ${MAKE_PROGRAM} installcheck

.include <bsd.port.mk>
