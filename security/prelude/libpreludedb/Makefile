# $OpenBSD: Makefile,v 1.1.1.1 2006/06/26 18:04:26 aanriot Exp $

COMMENT=	"Prelude framework database-access library"
COMMENT-pgsql=	"PostgreSQL module for libpreludedb"
COMMENT-mysql=	"MySQL module for libpreludedb"
COMMENT-sqlite=	"SQLite3 module for libpreludedb"

VERSION=	0.9.7.1
DISTNAME=	libpreludedb-${VERSION}

PKGNAME=	prelude-${DISTNAME}
PKGNAME-pgsql=	prelude-libpreludedb-pgsql-${VERSION}
PKGNAME-mysql=	prelude-libpreludedb-mysql-${VERSION}
PKGNAME-sqlite=	prelude-libpreludedb-sqlite-${VERSION}

MODULES=	lang/python devel/gettext

SHARED_LIBS=	preludedb	3.1

WANTLIB=	z

LIB_DEPENDS=	gpg-error.1::security/libgpg-error		\
		gcrypt.12::security/libgcrypt			\
		gnutls.12::security/gnutls			\
		prelude.7::security/prelude/libprelude

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-html-dir=${PREFIX}/share/doc
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

PSEUDO_FLAVORS=	no_pgsql no_mysql no_sqlite
FLAVOR?=

MULTI_PACKAGES?=
SUBPACKAGE?=

.if empty(FLAVOR:L:Mno_mysql)
MULTI_PACKAGES+=-mysql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-mysql"
LIB_DEPENDS+=	lib/mysql/mysqlclient.16::databases/mysql
WANTLIB+=	m ssl crypto
.  endif
CONFIGURE_ARGS+=--enable-mysql
.else
CONFIGURE_ARGS+=--disable-mysql
.endif

.if empty(FLAVOR:L:Mno_pgsql)
MULTI_PACKAGES+=-pgsql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-pgsql"
LIB_DEPENDS+=	pq.4::databases/postgresql
.  endif
CONFIGURE_ARGS+=--enable-pgsql
.else
CONFIGURE_ARGS+=--disable-pgsql
.endif

.if empty(FLAVOR:L:Mno_sqlite)
MULTI_PACKAGES+=-sqlite
BUILD_DEPENDS+=	:sqlite3-*:databases/sqlite3
CONFIGURE_ARGS+=--enable-sqlite3
.else
CONFIGURE_ARGS+=--disable-sqlite3
.endif

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
LIB_DEPENDS+=	preludedb.3::security/prelude/libpreludedb
.  else
WANTLIB+=	pthread c
.  endif
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libpreludedb/plugins/sql

.include <bsd.port.mk>
