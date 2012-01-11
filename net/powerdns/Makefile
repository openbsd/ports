# $OpenBSD: Makefile,v 1.19 2012/01/11 02:01:59 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		modern authoritative nameserver
COMMENT-mysql=		MySQL database access module for PowerDNS
COMMENT-pgsql=		PGSQL database access module for PowerDNS
COMMENT-sqlite=		SQLite database access module for PowerDNS
COMMENT-sqlite3=	SQLite3 database access module for PowerDNS
COMMENT-ldap=		LDAP module for PowerDNS

V=			2.9.22.5
DISTNAME=		pdns-${V}
PKGNAME=		powerdns-${V}
PKGNAME-main=		powerdns-${V}
PKGNAME-mysql=		powerdns-mysql-${V}
PKGNAME-pgsql=		powerdns-pgsql-${V}
PKGNAME-sqlite=		powerdns-sqlite-${V}
PKGNAME-sqlite3=	powerdns-sqlite3-${V}
PKGNAME-ldap=		powerdns-ldap-${V}
CATEGORIES=		net
HOMEPAGE=		http://www.powerdns.com/

MULTI_PACKAGES=		-main

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m stdc++
WANTLIB-main=		c pthread z ${WANTLIB}

MASTER_SITES=		http://downloads.powerdns.com/releases/

NO_REGRESS=		Yes

BUILD_DEPENDS=		devel/boost

PSEUDO_FLAVORS+=	no_mysql no_pgsql no_sqlite no_sqlite3
FLAVOR?=

BACKENDS=

# MySQL
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
LIB_DEPENDS-mysql=	databases/mysql
RUN_DEPENDS-mysql=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-mysql+=		crypto lib/mysql/mysqlclient>=10 ssl z ${WANTLIB}
BACKENDS+=		gmysql
.endif

# PostgreSQL
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE} \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
LIB_DEPENDS-pgsql=	databases/postgresql,-main
RUN_DEPENDS-pgsql=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-pgsql=		com_err crypto pq>=2 ssl z ${WANTLIB}
BACKENDS+=		gpgsql
.endif

# SQLite
.if ${FLAVOR:L:Mno_sqlite}
CONFIGURE_ARGS+=	--without-sqlite
.else
MULTI_PACKAGES+=	-sqlite
CONFIGURE_ARGS+=	--with-sqlite=${LOCALBASE} \
			--with-sqlite-includes=${LOCALBASE}/include
LIB_DEPENDS-sqlite=	databases/sqlite
RUN_DEPENDS-sqlite=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-sqlite+=	sqlite>=8 z ${WANTLIB}
BACKENDS+=		gsqlite
.endif

# SQLite3
.if ${FLAVOR:L:Mno_sqlite3}
CONFIGURE_ARGS+=	--without-sqlite3
.else
MULTI_PACKAGES+=	-sqlite3
CONFIGURE_ARGS+=	--with-sqlite3=${LOCALBASE} \
			--with-sqlite3-includes=${LOCALBASE}/include
LIB_DEPENDS-sqlite3=	databases/sqlite3
RUN_DEPENDS-sqlite3=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-sqlite3+=	sqlite3>=8 z ${WANTLIB}
BACKENDS+=		gsqlite3
.endif

# LDAP
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
LIB_DEPENDS-ldap=	databases/openldap
RUN_DEPENDS-ldap=	${FULLPKGNAME-main}:net/powerdns
CONFIGURE_ARGS+=	--with-ldap=${LOCALBASE} \
			--with-ldap-includes=${LOCALBASE}/include
WANTLIB-ldap+=		asn1 com_err crypto gssapi krb5 lber-2.4 ldap_r-2.4 sasl2 ssl z ${WANTLIB}
BACKENDS+=		ldap
.endif

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS}

SYSCONFDIR=		${BASESYSCONFDIR}/pdns

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.65
CONFIGURE_ARGS+=	--disable-shared \
			--libdir="${PREFIX}/lib/powerdns" \
			--with-modules="geo" \
			--with-dynmodules="${BACKENDS}" \
			--disable-recursor # OpenBSD lacks ucontext.h, see PR 5099
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

EXAMPLE_TABLES=		tables-mysql.sql \
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
