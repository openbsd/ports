COMMENT=	ODBC driver for PostgreSQL

VERSION=	18.00.0006
GH_ACCOUNT=	postgresql-interfaces
GH_PROJECT=	psqlodbc
GH_TAGNAME=	REL-${VERSION:S/./_/g}

PKGNAME=	postgresql-odbc-${VERSION}

CATEGORIES=	databases

HOMEPAGE=	https://odbc.postgresql.org/

MAINTAINER=	Paul Irofti <paul@irofti.net>

# LGPL
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		databases/postgresql \
			databases/iodbc

WANTLIB=		crypto iodbc iodbcinst m pq pthread ssl

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc

NO_TEST=		Yes

_TESTENV=		PGUSER=postgres \
			PGHOST=localhost \
			PGPASS=password

post-install:
	rm -f ${PREFIX}/lib/*.{a,la,so}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/postgresql
	${INSTALL_DATA} ${WRKSRC}/.libs/psqlodbca.{a,la,so} \
		${WRKSRC}/.libs/psqlodbcw.{a,la,so} \
		${PREFIX}/lib/postgresql/

do-test:
	cd ${WRKSRC}/test; env ${_TESTENV} ${MAKE_PROGRAM} installcheck

.include <bsd.port.mk>
