# $OpenBSD: Makefile,v 1.25 2010/10/18 18:36:47 espie Exp $

SHARED_ONLY=	Yes
SHARED_LIBS +=  freeradius-radius    4.0      # .0.0
SHARED_LIBS +=  freeradius-eap       4.0      # .0.0

COMMENT-main=	RADIUS server implementation
COMMENT-iodbc=	freeradius iodbc rlm addon
COMMENT-mysql=	freeradius mysql rlm addon
COMMENT-pgsql=	freeradius pgsql rlm addon
COMMENT-ldap=	freeradius ldap rlm addon

V=		2.1.9
DISTNAME=	freeradius-server-$V
EXTRACT_SUFX=	.tar.bz2

PKGNAME-main=	freeradius-$V
PKGNAME-iodbc=	freeradius-iodbc-$V
PKGNAME-mysql=	freeradius-mysql-$V
PKGNAME-pgsql=	freeradius-pgsql-$V
PKGNAME-ldap=	freeradius-ldap-$V

CATEGORIES=	net security

MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/old/

HOMEPAGE=	http://www.freeradius.org/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# GPLv2 - LGPLv2 - OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto ssl
WANTLIB-main=	${WANTLIB} c com_err krb5 pcap pthread readline termcap

CONFIGURE_STYLE=autoconf dest
AUTOCONF_VERSION=2.61
# we only patch {WRKSRC}/configure.in so there's no need
# to set AUTOCONF_DIR for the modules
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir='$${DESTDIR}/var' \
		--with-large-files \
		--with-snmp \
		--with-pic \
		--without-rlm-perl \
		--without-rlm-python \
		--without-rlm_eap_ikev2 \
		--without-rlm_pam \
		--without-rlm_sql_oracle \
		--without-rlm_sql_db2 \
		--without-rlm_sql_unixodbc \
		--disable-ltdl-install \
		--with-rlm-krb5-include-dir=/usr/include/kerberosV 

REGRESS_TARGET=	tests
REGRESS_DEPENDS=:freeradius-$V:net/freeradius
REGRESS_IS_INTERACTIVE=Yes # doesn't exit properly

MULTI_PACKAGES=	-main
SUBST_VARS+=	V

USE_GMAKE=	Yes
# depends on libltdl
USE_LIBTOOL=	gnu
USE_GROFF =	Yes

BUILD_DEPENDS=	::net/net-snmp
LIB_DEPENDS=	gdbm.>=3::databases/gdbm \
		ltdl.>=4::devel/libtool,-ltdl

PSEUDO_FLAVORS=	no_ldap no_mysql no_pgsql no_iodbc
FLAVOR?=		

.if ${FLAVOR:L:Mno_iodbc}
CONFIGURE_ARGS+=	--without-rlm_sql_iodbc
.else
MULTI_PACKAGES+=	-iodbc
BUILD_DEPENDS+=		::databases/iodbc
CONFIGURE_ARGS+=	--with-rlm_sql_iodbc
LIB_DEPENDS-iodbc=	iodbc.>=2::databases/iodbc
WANTLIB-iodbc=
.endif

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-rlm_ldap
.else
MULTI_PACKAGES+=	-ldap
BUILD_DEPENDS+=		:openldap-client-*:databases/openldap
LIB_DEPENDS-ldap=	lber.>=8,ldap_r.>=8:openldap-client-*:databases/openldap \
			freeradius-radius.>=1::net/freeradius
WANTLIB-ldap=		${WANTLIB} sasl2 asn1 com_err gssapi krb5
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-rlm_sql_mysql
.else
MULTI_PACKAGES+=	-mysql
BUILD_DEPENDS+=		:mysql-client-*:databases/mysql
LIB_DEPENDS-mysql=	mysqlclient_r.>=16:mysql-client-*:databases/mysql
WANTLIB-mysql=		${WANTLIB} m pthread z
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-rlm_sql_postgresql
.else
MULTI_PACKAGES+=	-pgsql
BUILD_DEPENDS+=		:postgresql-client-*:databases/postgresql
CONFIGURE_ARGS+=	--with-rlm-sql-postgresql-include-dir=${LOCALBASE}/include/postgresql
LIB_DEPENDS-pgsql=	pq.>=2:postgresql-client-*:databases/postgresql
WANTLIB-pgsql=
.endif

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i +=	:freeradius-$V:net/freeradius
.endfor

post-configure:
	@perl -pi -e 's,/etc/raddb,${SYSCONFDIR}/raddb,g' ${WRKSRC}/man/*/*

post-install:
.for f in bin/radlast bin/radtest sbin/checkrad sbin/radwatch \
    share/examples/freeradius/dictionary share/examples/freeradius/radiusd.conf 
	@perl -pi -e 's,\$${DESTDIR},,g' ${PREFIX}/$f
.endfor
	rm ${PREFIX}/lib/freeradius/*.la ${PREFIX}/lib/freeradius/*.a

pre-regress:
	perl -pi -e 's,\$${DESTDIR},${DESTDIR},g' ${WRKSRC}/raddb/radiusd.conf

.include <bsd.port.mk>
