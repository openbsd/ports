# $OpenBSD: Makefile,v 1.16 2016/08/17 20:58:19 sthen Exp $

PORTROACH=	limit:^3\.

COMMENT-main=	RADIUS server implementation
COMMENT-freetds= freeradius freetds rlm addon
COMMENT-iodbc=	freeradius iodbc rlm addon
COMMENT-ldap=	freeradius ldap rlm addon
COMMENT-memcached= freeradius memcached rlm addon
COMMENT-mysql=	freeradius mysql rlm addon
COMMENT-pgsql=	freeradius pgsql rlm addon
COMMENT-python=	freeradius python rlm addon

V=		3.0.12pre20160630
REVISION-main=	0
DISTNAME=	freeradius-server-$V
#EXTRACT_SUFX=	.tar.bz2

PKGNAME-main=	freeradius-$V
PKGNAME-freetds= freeradius-iodbc-$V
PKGNAME-iodbc=	freeradius-iodbc-$V
PKGNAME-ldap=	freeradius-ldap-$V
PKGNAME-memcached= freeradius-memcached-$V
PKGNAME-mysql=	freeradius-mysql-$V
PKGNAME-pgsql=	freeradius-pgsql-$V
PKGNAME-python=	freeradius-python-$V

CATEGORIES=	net security

####
#MASTER_SITES=	http://ftp.cc.uoc.gr/mirrors/ftp.freeradius.org/ \
#		ftp://ftp.freeradius.org/pub/radius/ \
#		ftp://ftp.freeradius.org/pub/radius/old/
GH_ACCOUNT=     FreeRADIUS
GH_PROJECT=     freeradius-server
GH_COMMIT=      f982311f75b704c3ed1581c4fca69dd0ae7fd82d
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
BUILD_DEPENDS=  ${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
post-patch:
	cd ${WRKSRC}; \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh
####

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
CONFIGURE_ARGS=	--libdir=${PREFIX}/lib/freeradius
# Disabling modules via --without-rlm_FOO doesn't seem to work as of 3.0.10.
# No option to disable collectd; bodged via patch-configure.

TEST_TARGET=	test
TEST_DEPENDS=	freeradius-$V:${BUILD_PKGPATH}
TEST_IS_INTERACTIVE=Yes # doesn't exit properly

MODULES=	gcc4 \
		lang/python
MODGCC4_ARCHS=	*

MULTI_PACKAGES= -main -freetds -iodbc -ldap -memcached -mysql -pgsql -python

USE_GMAKE=	Yes
USE_LIBTOOL=	no#...has its own _special_ libtool.

# Not really trying to build with this, but --without-rlm_pam doesn't disable
# it, so just list as a bdep to avoid risk of broken bulk builds.
BUILD_DEPENDS+=	security/openpam

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

PSEUDO_FLAVORS= no_freetds no_iodbc no_ldap no_memcached no_mysql \
		no_pgsql no_python
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

# rlm_sql_freetds
.if ${BUILD_PACKAGES:M-freetds}
CONFIGURE_ARGS+=	--with-freetds-lib-dir=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-freetds-include-dir=${LOCALBASE}/include
.else
CONFIGURE_ARGS+=	--without-rlm_sql_freetds
.endif
LIB_DEPENDS-freetds=	databases/freetds
WANTLIB-freetds=	ct

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

# rlm_sql_memcached
.if ! ${BUILD_PACKAGES:M-memcached}
CONFIGURE_ARGS+=	--without-rlm_sql_memcached
.endif
LIB_DEPENDS-memcached=	devel/libmemcached
WANTLIB-memcached=	memcached pthread
RUN_DEPENDS-memcached=	#empty

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
