# $OpenBSD: Makefile,v 1.3 2006/06/01 14:25:06 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		"RADIUS server implementation"
COMMENT-iodbc=		"freeradius iodbc rlm addon"
COMMENT-mysql=		"freeradius mysql rlm addon"
COMMENT-pgsql=		"freeradius pgsql rlm addon"
COMMENT-ldap=		"freeradius ldap rlm addon"

V=			1.1.1
DISTNAME=		freeradius-$V
PKGNAME=		${DISTNAME}p1
PKGNAME-iodbc=		freeradius-iodbc-$V
PKGNAME-mysql=		freeradius-mysql-$V
PKGNAME-pgsql=		freeradius-pgsql-$V
PKGNAME-ldap=		freeradius-ldap-$V
SHARED_LIBS=		eap	1.0 \
			radius	1.0

CATEGORIES=	net
MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/

HOMEPAGE=	http://www.freeradius.org/

MAINTAINER=	Tim Kornau <opti@openbsd.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir='$${DESTDIR}/var' \
		--with-large-files \
		--with-snmp \
		--with-pic \
		--without-rlm-perl \
		--without-rlm_pam \
		--without-rlm_sql_oracle \
		--without-rlm_sql_db2 \
		--without-rlm_sql_unixodbc \
		--disable-ltdl-install \
		--with-ltdl-lib=${LOCALBASE}/lib \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-rlm-krb5-include-dir=/usr/include/kerberosV 
	
NO_REGRESS=	Yes

MULTI_PACKAGES=
SUBPACKAGE?=

PSEUDO_FLAVORS=	no_ldap no_mysql no_pgsql no_iodbc
FLAVOR?=		

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

BUILD_DEPENDS=	::net/net-snmp
LIB_DEPENDS=	gdbm.3::databases/gdbm \
		ltdl.4::devel/libtool,-ltdl


.if ${FLAVOR:L:Mno_iodbc}
CONFIGURE_ARGS+=--without-rlm_sql_iodbc
.else
MULTI_PACKAGES+=-iodbc
BUILD_DEPENDS+=	::databases/iodbc
CONFIGURE_ARGS+=--with-rlm_sql_iodbc \
		--with-iodbc-include-dir='${LOCALBASE}/include' \
		--with-iodbc-lib-dir='${LOCALBASE}/lib'
.endif

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=--without-rlm_ldap
.else
MULTI_PACKAGES+=-ldap
BUILD_DEPENDS+=	:openldap-client-*:databases/openldap
CONFIGURE_ARGS+=--with-rlm_ldap
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=--without-rlm_sql_mysql
.else
MULTI_PACKAGES+=-mysql
BUILD_DEPENDS+=	:mysql-client-*:databases/mysql
CONFIGURE_ARGS+=--with-rlm_sql_mysql
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=--without-rlm_sql_postgresql
.else
MULTI_PACKAGES+=-pgsql
BUILD_DEPENDS+=	:postgresql-client-*:databases/postgresql
CONFIGURE_ARGS+=--with-rlm_sql_postgresql \
		--with-rlm-sql-postgresql-lib-dir=${LOCALBASE}/lib/ \
		--with-rlm-sql-postgresql-include-dir=${LOCALBASE}/include/postgresql
.endif

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-iodbc"
LIB_DEPENDS=	iodbc.2::databases/iodbc
RUN_DEPENDS=	::net/freeradius
WANTLIB=	pthread
.  elif ${SUBPACKAGE} == "-ldap"
LIB_DEPENDS=	lber.8,ldap_r.8:openldap-client-*:databases/openldap \
		radius.1::net/freeradius
WANTLIB=	crypto pthread sasl2 ssl
.  elif ${SUBPACKAGE} == "-mysql"
LIB_DEPENDS=	mysqlclient_r.16:mysql-client-*:databases/mysql
RUN_DEPENDS=	::net/freeradius
WANTLIB=	crypto m pthread ssl z
.  elif ${SUBPACKAGE} == "-pgsql"
LIB_DEPENDS=	pq.2:postgresql-client-*:databases/postgresql
RUN_DEPENDS=	::net/freeradius
.  else
WANTLIB=	c com_err crypto krb5 pthread ssl
.  endif
.endif

post-configure:
	@perl -pi -e 's,/etc/raddb,${SYSCONFDIR}/raddb,g' ${WRKSRC}/man/*/*

post-install:
.for f in bin/radlast bin/radtest sbin/checkrad sbin/radwatch \
    sbin/check-radiusd-config share/examples/freeradius/dictionary \
    share/examples/freeradius/radiusd.conf
	@perl -pi -e 's,\$${DESTDIR},,g' ${PREFIX}/$f
.endfor

.include <bsd.port.mk>
