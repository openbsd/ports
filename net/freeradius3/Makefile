# $OpenBSD: Makefile,v 1.5 2015/11/27 13:13:07 sthen Exp $

PORTROACH=	limit:^3\.

SHARED_ONLY=	Yes

COMMENT-main=	RADIUS server implementation
COMMENT-iodbc=	freeradius iodbc rlm addon
COMMENT-mysql=	freeradius mysql rlm addon
COMMENT-pgsql=	freeradius pgsql rlm addon
COMMENT-ldap=	freeradius ldap rlm addon
COMMENT-python=	freeradius python rlm addon

V=		3.0.10
REVISION-main=	2
DISTNAME=	freeradius-server-$V
EXTRACT_SUFX=	.tar.bz2

PKGNAME-main=	freeradius-$V
PKGNAME-iodbc=	freeradius-iodbc-$V
PKGNAME-mysql=	freeradius-mysql-$V
PKGNAME-pgsql=	freeradius-pgsql-$V
PKGNAME-python=	freeradius-python-$V
PKGNAME-ldap=	freeradius-ldap-$V

CATEGORIES=	net security

MASTER_SITES=	http://ftp.cc.uoc.gr/mirrors/ftp.freeradius.org/ \
		ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/old/

HOMEPAGE=	http://www.freeradius.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 - LGPLv2 - OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
# Don't allow FR_LOCATE_DIR to use locate(1) to guess possible
# locations for libs etc.
CONFIGURE_ENV=	ac_cv_path_LOCATE= \
		ac_cv_path_SNMPGET=${LOCALBASE}/bin/snmpget \
		ac_cv_path_SNMPWALK=${LOCALBASE}/bin/snmpwalk \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--libdir=${PREFIX}/lib/freeradius
# Disabling modules via --without-rlm_FOO doesn't seem to work as of 3.0.10.
# No option to disable collectd; bodged via patch-configure.

TEST_TARGET=	test
TEST_DEPENDS=	freeradius-$V:${BUILD_PKGPATH}
TEST_IS_INTERACTIVE=Yes # doesn't exit properly

MODULES=	lang/python

MULTI_PACKAGES=	-main -python -ldap -iodbc -mysql -pgsql

USE_GMAKE=	Yes
USE_LIBTOOL=	no#...has its own _special_ libtool.

# Not really trying to build with this, but --without-rlm_pam doesn't disable
# it, so just list as a bdep to avoid risk of broken bulk builds.
BUILD_DEPENDS=	security/openpam

RUN_DEPENDS-main=	#empty
LIB_DEPENDS-main=	databases/gdbm \
			databases/libhiredis \
			devel/json-c \
			devel/libexecinfo \
			devel/libtalloc \
			security/yubico/yubico-c \
			security/yubico/yubico-c-client \
			devel/pcre \
			net/curl

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c crypto curl execinfo gdbm hiredis idn json-c m nghttp2
WANTLIB-main += pcap pcre perl pthread readline sqlite3 ssl talloc termcap
WANTLIB-main += util ykclient yubikey z

PSEUDO_FLAVORS=	no_python no_ldap no_iodbc no_mysql no_pgsql
FLAVOR?=

.include <bsd.port.arch.mk>

# rlm_python
.if ! ${BUILD_PACKAGES:M-python}
CONFIGURE_ARGS+=	--without-rlm_python
.endif
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
WANTLIB-python=		${MODPY_WANTLIB} m pthread util
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

# rlm_ldap
.if ${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--with-ldap-lib-dir=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-ldap-include-dir=${LOCALBASE}/include
.else
CONFIGURE_ARGS+=	--without-rlm_ldap
.endif
LIB_DEPENDS-ldap=	databases/openldap
WANTLIB-ldap=		ldap
RUN_DEPENDS-ldap=	#empty

# rlm_sql_iodbc
.if ${BUILD_PACKAGES:M-iodbc}
CONFIGURE_ARGS+=	--with-iodbc-lib-dir=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-iodbc-include-dir=${LOCALBASE}/include
.else
CONFIGURE_ARGS+=	--without-rlm_sql_iodbc
.endif
LIB_DEPENDS-iodbc=	databases/iodbc
WANTLIB-iodbc=		iodbc>=2
RUN_DEPENDS-iodbc=	#empty

# rlm_sql_mysql
.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=	--with-mysql-lib-dir=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-mysql-include-dir=${LOCALBASE}/include/mysql
.else
CONFIGURE_ARGS+=	--without-rlm_sql_mysql
.endif
LIB_DEPENDS-mysql=	databases/mariadb
WANTLIB-mysql=		crypto ssl m pthread z mysqlclient_r
RUN_DEPENDS-mysql=	#empty

# rlm_sql_postgresql
.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-rlm-sql-postgresql-lib-dir=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-rlm-sql-postgresql-include-dir=${LOCALBASE}/include/postgresql
.else
CONFIGURE_ARGS+=	--without-rlm_sql_postgresql
.endif
LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		pq
RUN_DEPENDS-pgsql=	#empty

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i +=	freeradius-$V:net/freeradius3
WANTLIB$i ?=		#empty
.endfor

FREERADIUS_ETC=	${SYSCONFDIR}/raddb
SUBST_VARS=	FREERADIUS_ETC
MAKE_FLAGS=	PACKAGE=openbsd VERBOSE=1
FAKE_FLAGS=	VERBOSE=1 R=${WRKINST} \
		raddbdir=${PREFIX}/share/examples/freeradius

post-configure:
	sed -i -e 's,/etc/raddb,${SYSCONFDIR}/raddb,g' ${WRKSRC}/man/*/*
	sed -i -e 's,/usr/local,${TRUEPREFIX},g' ${WRKSRC}/doc/README
	rm ${WRKSRC}/doc/README.orig

# pre-create examples dir, otherwise build tries to create it twice and fails.
pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/freeradius

post-install:
	rm ${PREFIX}/lib/freeradius/*.*a
	rm -r ${PREFIX}/share/examples/freeradius/mods-config/sql/*/oracle
	chmod -R u+rwX,og+rX ${PREFIX}/share/examples/freeradius/

.include <bsd.port.mk>
