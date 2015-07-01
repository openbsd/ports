# $OpenBSD: Makefile,v 1.38 2015/07/01 21:10:42 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		modular authoritative nameserver (with database support)
COMMENT-mysql=		MySQL database access module for PowerDNS
COMMENT-pgsql=		PGSQL database access module for PowerDNS
COMMENT-ldap=		LDAP module for PowerDNS

V=			3.4.5
DISTNAME=		pdns-${V}
EXTRACT_SUFX =		.tar.bz2
PKGNAME=		powerdns-${V}
PKGNAME-main=		powerdns-${V}
PKGNAME-mysql=		powerdns-mysql-${V}
PKGNAME-pgsql=		powerdns-pgsql-${V}
PKGNAME-ldap=		powerdns-ldap-${V}
CATEGORIES=		net
HOMEPAGE=		http://www.powerdns.com/
MAINTAINER=		Florian Obser <florian+ports@narrans.de>

MULTI_PACKAGES=		-main -mysql -pgsql -ldap

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread stdc++

WANTLIB-main += ${WANTLIB}
WANTLIB-main += boost_program_options-mt boost_serialization-mt botan-1.10
WANTLIB-main += bz2 c crypto gmp sqlite3 z

MASTER_SITES=		http://downloads.powerdns.com/releases/

NO_TEST=		Yes

LIB_DEPENDS-main=	devel/boost \
			devel/gmp \
			security/botan

PSEUDO_FLAVORS+=	no_mysql no_pgsql no_ldap
FLAVOR?=

BACKENDS=		gsqlite3

SYSCONFDIR=		${BASESYSCONFDIR}/pdns

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-shared \
			--with-modules="geo bind" \
			--with-sqlite3 \
			--with-dynmodules="${BACKENDS}" \
			--without-lua \
			--enable-botan1.10 \
			--disable-hardening
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=		--tag=disable-static

.include <bsd.port.arch.mk>

# MySQL
.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
BACKENDS+=		gmysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif
LIB_DEPENDS-mysql=	databases/mariadb
RUN_DEPENDS-mysql=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-mysql+=		crypto lib/mysql/mysqlclient ssl z ${WANTLIB}

# PostgreSQL
.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE} \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
BACKENDS+=		gpgsql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif
LIB_DEPENDS-pgsql=	databases/postgresql,-main
RUN_DEPENDS-pgsql=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-pgsql=		crypto pq>=2 ssl ${WANTLIB}

# LDAP
.if ${BUILD_PACKAGES:M-ldap}
BACKENDS+=		ldap
.else
CONFIGURE_ARGS+=	--without-ldap
.endif
LIB_DEPENDS-ldap=	databases/openldap
RUN_DEPENDS-ldap=	${FULLPKGNAME-main}:net/powerdns
WANTLIB-ldap+=		${WANTLIB} crypto lber-2.4 ldap_r-2.4 sasl2 ssl


EXAMPLE_DIR=		${PREFIX}/share/examples/pdns/
post-install:
	rm -f ${PREFIX}/lib/pdns/*.la
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
.for t in tables-mysql.sql tables-pgsql.sql tables-sqlite.sql
	${INSTALL_DATA} ${FILESDIR}/$t ${EXAMPLE_DIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/pdns/pdns.conf-dist ${EXAMPLE_DIR}
	${INSTALL_DATA} ${FILESDIR}/pdns.conf ${EXAMPLE_DIR}

.include <bsd.port.mk>
