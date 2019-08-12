# $OpenBSD: Makefile,v 1.73 2019/08/12 09:00:30 otto Exp $

COMMENT-main=		modular authoritative nameserver (with database support)
COMMENT-mysql=		MySQL database access module for PowerDNS
COMMENT-pgsql=		PostgreSQL database access module for PowerDNS
COMMENT-ldap=		LDAP database access module for PowerDNS

V=			4.1.13
DISTNAME=		pdns-${V}
EXTRACT_SUFX =		.tar.bz2
PKGNAME-main=		powerdns-${V}
PKGSPEC-main=		powerdns-=${V}
PKGNAME-mysql=		powerdns-mysql-${V}
PKGNAME-pgsql=		powerdns-pgsql-${V}
PKGNAME-ldap=		powerdns-ldap-${V}
#REVISION-main=		1
#REVISION-mysql=		1
#REVISION-pgsql=		1
#REVISION-ldap=		1

CATEGORIES=		net

HOMEPAGE=		http://www.powerdns.com/

MULTI_PACKAGES=		-main -mysql -pgsql -ldap

# GPLv2 only, OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

WANTLIB-main += ${WANTLIB}
WANTLIB-main += boost_program_options-mt c crypto sodium sqlite3 z

MASTER_SITES=		https://downloads.powerdns.com/releases/
MAINTAINER=		Otto Moerbeek <otto@drijf.net>

COMPILER =		base-clang ports-gcc

NO_TEST=		Yes

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/sqlite3 \
			devel/boost \
			security/libsodium

PSEUDO_FLAVORS+=	no_mysql no_pgsql no_ldap
FLAVOR?=

BACKENDS=		gsqlite3

SYSCONFDIR=		${BASESYSCONFDIR}/pdns

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-shared \
			--with-modules="bind" \
			--with-sqlite3 \
			--with-dynmodules="${BACKENDS}" \
			--without-lua \
			--disable-hardening \
			--without-protobuf \
			--enable-tools

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
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			databases/mariadb
RUN_DEPENDS-mysql=	net/powerdns
WANTLIB-mysql+=		${WANTLIB} crypto lib/mysql/mysqlclient ssl z

# PostgreSQL
.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-pg-config=${LOCALBASE}/bin/pg_config
BACKENDS+=		gpgsql
.else
CONFIGURE_ARGS+=	--without-pg-config
.endif
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			databases/postgresql,-main
RUN_DEPENDS-pgsql=	net/powerdns
WANTLIB-pgsql=		${WANTLIB} crypto pq>=2 ssl

# LDAP
.if ${BUILD_PACKAGES:M-ldap}
BACKENDS+=		ldap
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/heimdal/include" \
			KRB5_LIBS="-L${LOCALBASE}/heimdal/lib -lkrb5"
.endif
LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
			databases/openldap,-main \
			security/heimdal,-libs
RUN_DEPENDS-ldap=	net/powerdns
WANTLIB-ldap=		${WANTLIB} ldap_r
WANTLIB-ldap+=          c com_err crypto lber-2.4 ldap_r-2.4 sasl2 ssl util
WANTLIB-ldap+=          heimdal/lib/asn1 heimdal/lib/hcrypto heimdal/lib/heimbase
WANTLIB-ldap+=          heimdal/lib/heimsqlite heimdal/lib/hx509 heimdal/lib/krb5
WANTLIB-ldap+=          heimdal/lib/roken heimdal/lib/wind

EXAMPLE_DIR=		${PREFIX}/share/examples/pdns/

post-install:
	rm -f ${PREFIX}/lib/pdns/*.la
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	cat ${FILESDIR}/pdns.conf ${WRKSRC}/pdns/pdns.conf-dist > \
	    ${WRKSRC}/pdns.conf # concatenate local and upstream sample configs
	${INSTALL_DATA} ${WRKSRC}/pdns.conf ${EXAMPLE_DIR}

.include <bsd.port.mk>
