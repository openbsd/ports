# $OpenBSD: Makefile,v 1.9 2009/06/18 20:08:25 naddy Exp $

COMMENT-main=		modern authoritative nameserver
COMMENT-mysql=		mysql database access module for powerdns
COMMENT-pgsql=		pgsql database access module for powerdns
COMMENT-sqlite=		sqlite database access module for powerdns
COMMENT-sqlite3=	sqlite3 database access module for powerdns

V=			2.9.21.2
DISTNAME=		pdns-${V}
PKGNAME=		powerdns-${V}
PKGNAME-main=		powerdns-${V}p3
PKGNAME-mysql=		powerdns-mysql-${V}p2
PKGNAME-pgsql=		powerdns-pgsql-${V}p2
PKGNAME-sqlite= 	powerdns-sqlite-${V}p2
PKGNAME-sqlite3=	powerdns-sqlite3-${V}p2
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

WANTLIB-main=		c m pthread stdc++ z

MASTER_SITES=		http://downloads.powerdns.com/releases/

NO_REGRESS=		Yes

BUILD_DEPENDS=		::devel/boost

PSEUDO_FLAVORS+=	no_mysql no_pgsql no_sqlite no_sqlite3
FLAVOR?=

BACKENDS=

# MySQL
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
LIB_DEPENDS-mysql=	lib/mysql/mysqlclient.>=10::databases/mysql
RUN_DEPENDS-mysql=	:${FULLPKGNAME-main}:net/powerdns
WANTLIB-mysql+= 	crypto m ssl z
BACKENDS+=		gmysql
.endif

# PostgreSQL
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE} \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
LIB_DEPENDS-pgsql=	pq.>=2::databases/postgresql,-main
RUN_DEPENDS-pgsql=	:${FULLPKGNAME-main}:net/powerdns
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
RUN_DEPENDS-sqlite=	:${FULLPKGNAME-main}:net/powerdns
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
RUN_DEPENDS-sqlite3=	:${FULLPKGNAME-main}:net/powerdns
WANTLIB-sqlite3+=	z
BACKENDS+=		gsqlite3
.endif

USE_LIBTOOL=		Yes

BUILD_DEPENDS+=          ${MODGNU_AUTOCONF_DEPENDS}

AUTOCONF_VERSION=	2.61

CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-modules="geo" \
			--with-dynmodules="${BACKENDS}" \
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
