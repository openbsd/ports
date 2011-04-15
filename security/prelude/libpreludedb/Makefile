# $OpenBSD: Makefile,v 1.30 2011/04/15 16:10:38 ajacoutot Exp $

COMMENT-main=	Prelude framework database-access library
COMMENT-pgsql=	PostgreSQL module for libpreludedb
COMMENT-mysql=	MySQL module for libpreludedb
COMMENT-sqlite=	SQLite3 module for libpreludedb

VERSION=	0.9.15.3
DISTNAME=	libpreludedb-${VERSION}

PKGNAME-main=	prelude-libpreludedb-${VERSION}
PKGNAME-pgsql=	prelude-libpreludedb-pgsql-${VERSION}
PKGNAME-mysql=	prelude-libpreludedb-mysql-${VERSION}
PKGNAME-sqlite=	prelude-libpreludedb-sqlite-${VERSION}

REVISION-main=	5
REVISION-pgsql=	3
REVISION-mysql=	3
REVISION-sqlite=3

MODPY_EGG_VERSION=0.0.0

MASTER_SITES=	http://www.prelude-ids.com/download/releases/libpreludedb/

MODULES=	lang/python \
		devel/gettext
USE_GROFF =	Yes

SHARED_LIBS=	preludedb	4.9

WANTLIB=	tasn1 z gcrypt gnutls prelude gmp gpg-error hogweed nettle
WANTLIB-main=	${WANTLIB} c
WANTLIB-mysql=	${WANTLIB} preludedb lib/mysql/mysqlclient crypto m ssl
WANTLIB-pgsql=	${WANTLIB} preludedb pq
WANTLIB-sqlite=	${WANTLIB} preludedb sqlite3

LIB_DEPENDS=		security/libgcrypt \
			security/gnutls \
			security/prelude/libprelude

LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/postgresql

LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/mysql

LIB_DEPENDS-sqlite=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			databases/sqlite3

RUN_DEPENDS-pgsql=	# empty
RUN_DEPENDS-mysql=	# empty
RUN_DEPENDS-sqlite=	# empty

CONFIGURE_STYLE=gnu

PSEUDO_FLAVORS=	no_pgsql no_mysql no_sqlite
FLAVOR?=
MULTI_PACKAGES=	-main

.if empty(FLAVOR:L:Mno_pgsql)
MULTI_PACKAGES+=-pgsql
CONFIGURE_ARGS+=--with-postgresql
.else
CONFIGURE_ARGS+=--without-postgresql
.endif

.if empty(FLAVOR:L:Mno_mysql)
MULTI_PACKAGES+=-mysql
CONFIGURE_ARGS+=--with-mysql
.else
CONFIGURE_ARGS+=--without-mysql
.endif

.if empty(FLAVOR:L:Mno_sqlite)
MULTI_PACKAGES+=-sqlite
CONFIGURE_ARGS+=--with-sqlite3
.else
CONFIGURE_ARGS+=--without-sqlite3
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libpreludedb/plugins/sql/

.include <bsd.port.mk>
