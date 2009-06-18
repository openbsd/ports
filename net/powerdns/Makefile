# $OpenBSD: Makefile,v 1.8 2009/06/18 01:42:41 sthen Exp $

COMMENT-main=		modern authoritative nameserver
COMMENT-mysql=		mysql database access module for powerdns
COMMENT-pgsql=		pgsql database access module for powerdns
COMMENT-sqlite=		sqlite database access module for powerdns
COMMENT-sqlite3=	sqlite3 database access module for powerdns

V=			2.9.21.2
DISTNAME=		pdns-${V}
PKGNAME=		powerdns-${V}
PKGNAME-main=		powerdns-${V}p2
PKGNAME-mysql=		powerdns-mysql-${V}p1
PKGNAME-pgsql=		powerdns-pgsql-${V}p1
PKGNAME-sqlite= 	powerdns-sqlite-${V}p1
PKGNAME-sqlite3=	powerdns-sqlite3-${V}p1
CATEGORIES=		net
HOMEPAGE=		http://www.powerdns.com/

SHARED_LIBS=		geobackend 	0.0 \
			gmysqlbackend	0.0 \
			gpgsqlbackend	0.0 \
			gsqlite3backend	0.0 \
			gsqlitebackend	0.0

MULTI_PACKAGES=		-main

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=		c crypto m pthread ssl stdc++ z

MASTER_SITES=		http://downloads.powerdns.com/releases/

NO_REGRESS=		Yes

BUILD_DEPENDS=		::devel/boost

PSEUDO_FLAVORS+=	no_mysql no_pgsql no_sqlite no_sqlite3
FLAVOR?=

BACKENDS=

# XXX this is wrong. but at least it means packages work.
#
# the main binary gets linked with mysqlclient; actually only the
# mysql module should link with it.
#
LIB_DEPENDS-main=	lib/mysql/mysqlclient.>=10::databases/mysql

# MySQL
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
LIB_DEPENDS-mysql=	lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB-mysql+= 	z
BACKENDS+=		gmysql
.endif

# PostgreSQL
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE} \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
LIB_DEPENDS-pgsql=	pq.>=2:postgresql-client-*:databases/postgresql
BACKENDS+=		gpgsql
.endif

# SQLite
.if ${FLAVOR:L:Mno_sqlite}
CONFIGURE_ARGS+=	--without-sqlite
.else
MULTI_PACKAGES+=	-sqlite
CONFIGURE_ARGS+=	--with-sqlite=${LOCALBASE} \
			--with-sqlite-includes=${LOCALBASE}/include
LIB_DEPENDS-sqlite=	sqlite.>=8::databases/sqlite
WANTLIB-sqlite+=	z
BACKENDS+=		gsqlite
.endif

# SQLite3
.if ${FLAVOR:L:Mno_sqlite3}
CONFIGURE_ARGS+=	--without-sqlite3
.else
MULTI_PACKAGES+=	-sqlite3
CONFIGURE_ARGS+=	--with-sqlite3=${LOCALBASE} \
			--with-sqlite3-includes=${LOCALBASE}/include
LIB_DEPENDS-sqlite3=	sqlite3.>=8::databases/sqlite3
WANTLIB-sqlite3+=	z
BACKENDS+=		gsqlite3
.endif

USE_LIBTOOL=		Yes

BUILD_DEPENDS+=          ${MODGNU_AUTOCONF_DEPENDS}

AUTOCONF_VERSION=	2.61

CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-dynmodules="${BACKENDS}" \
			--disable-recursor # OpenBSD lacks ucontext.h, see PR 5099

EXAMPLE_TABLES= 	tables-mysql.sql \
			tables-pgsql.sql \
			tables-sqlite.sql
EXAMPLE_DIR=		${PREFIX}/share/examples/powerdns/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
.for t in ${EXAMPLE_TABLES}
	${INSTALL_DATA} ${FILESDIR}/$t ${EXAMPLE_DIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/pdns/pdns.conf-dist ${EXAMPLE_DIR}
	${INSTALL_DATA} ${FILESDIR}/pdns.conf ${EXAMPLE_DIR}

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/pdns"
