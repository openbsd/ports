# $OpenBSD: Makefile,v 1.21 2009/05/19 11:03:31 sthen Exp $

COMMENT-main=	Prelude framework database-access library
COMMENT-pgsql=	PostgreSQL module for libpreludedb
COMMENT-mysql=	MySQL module for libpreludedb
COMMENT-sqlite=	SQLite3 module for libpreludedb

VERSION=	0.9.13
DISTNAME=	libpreludedb-${VERSION}

MODPY_EGG_VERSION=0.0.0

PKGNAME-main=	prelude-libpreludedb-${VERSION}p4
PKGNAME-pgsql=	prelude-libpreludedb-pgsql-${VERSION}p2
PKGNAME-mysql=	prelude-libpreludedb-mysql-${VERSION}p2
PKGNAME-sqlite=	prelude-libpreludedb-sqlite-${VERSION}p2

MODULES=	lang/python \
		devel/gettext

SHARED_LIBS=	preludedb	4.7	# .4.5

WANTLIB=	tasn1 z
WANTLIB-main=	${WANTLIB} c pthread
WANTLIB-mysql=	${WANTLIB} crypto m ssl

LIB_DEPENDS=		gcrypt.>=12::security/libgcrypt \
			gnutls.>=12::security/gnutls \
			gpg-error.>=1::security/libgpg-error \
			prelude.>=7::security/prelude/libprelude

LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			pq.>=4::databases/postgresql

LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			lib/mysql/mysqlclient.>=16::databases/mysql

LIB_DEPENDS-sqlite=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			sqlite3.>=8::databases/sqlite3

CONFIGURE_STYLE=gnu

PSEUDO_FLAVORS=	no_pgsql no_mysql no_sqlite
FLAVOR?=
MULTI_PACKAGES=	-main

.if empty(FLAVOR:L:Mno_pgsql)
MULTI_PACKAGES+=-pgsql
CONFIGURE_ARGS+=--with-pgsql
.else
CONFIGURE_ARGS+=--without-pgsql
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libpreludedb/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/libpreludedb/

.include <bsd.port.mk>
