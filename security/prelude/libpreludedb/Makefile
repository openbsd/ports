# $OpenBSD: Makefile,v 1.9 2006/11/25 19:54:16 espie Exp $

COMMENT-main=	"Prelude framework database-access library"
COMMENT-pgsql=	"PostgreSQL module for libpreludedb"
COMMENT-mysql=	"MySQL module for libpreludedb"
COMMENT-sqlite=	"SQLite3 module for libpreludedb"

VERSION=	0.9.10
DISTNAME=	libpreludedb-${VERSION}

PKGNAME-main=	prelude-${DISTNAME}p0
PKGNAME-pgsql=	prelude-libpreludedb-pgsql-${VERSION}
PKGNAME-mysql=	prelude-libpreludedb-mysql-${VERSION}
PKGNAME-sqlite=	prelude-libpreludedb-sqlite-${VERSION}

MODULES=	lang/python \
		devel/gettext

SHARED_LIBS=	preludedb	4.2

WANTLIB=	z

LIB_DEPENDS=	gpg-error.>=1::security/libgpg-error		\
		gcrypt.>=12::security/libgcrypt			\
		gnutls.>=12::security/gnutls			\
		prelude.>=7::security/prelude/libprelude

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-html-dir=${PREFIX}/share/doc
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

PSEUDO_FLAVORS=	no_pgsql no_mysql no_sqlite
FLAVOR?=

MULTI_PACKAGES=	-main

.if empty(FLAVOR:L:Mno_pgsql)
MULTI_PACKAGES+=-pgsql
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			pq.>=4::databases/postgresql
CONFIGURE_ARGS+=--with-pgsql
.else
CONFIGURE_ARGS+=--without-pgsql
.endif

.if empty(FLAVOR:L:Mno_mysql)
MULTI_PACKAGES+=-mysql
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			lib/mysql/mysqlclient.>=16::databases/mysql
WANTLIB-mysql=		${WANTLIB} m ssl crypto
CONFIGURE_ARGS+=--with-mysql
.else
CONFIGURE_ARGS+=--without-mysql
.endif

.if empty(FLAVOR:L:Mno_sqlite)
MULTI_PACKAGES+=-sqlite
LIB_DEPENDS-sqlite=	${LIB_DEPENDS} \
			preludedb.>=3::${BUILD_PKGPATH} \
			sqlite3.>=8::databases/sqlite3
CONFIGURE_ARGS+=--with-sqlite3
.else
CONFIGURE_ARGS+=--without-sqlite3
.endif

WANTLIB-main=	${WANTLIB} pthread c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libpreludedb/plugins/sql/

	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/libpreludedb/

.include <bsd.port.mk>
