# $OpenBSD: Makefile,v 1.54 2014/04/21 13:07:08 ajacoutot Exp $

SHARED_ONLY=	Yes
SHARED_LIBS +=  freeradius-radius    4.1      # .0.0
SHARED_LIBS +=  freeradius-eap       4.0      # .0.0

COMMENT-main=	RADIUS server implementation
COMMENT-iodbc=	freeradius iodbc rlm addon
COMMENT-mysql=	freeradius mysql rlm addon
COMMENT-pgsql=	freeradius pgsql rlm addon
COMMENT-ldap=	freeradius ldap rlm addon

V=		2.2.0
DISTNAME=	freeradius-server-$V
EXTRACT_SUFX=	.tar.bz2

PKGNAME-main=	freeradius-$V
REVISION-main=	4
PKGNAME-iodbc=	freeradius-iodbc-$V
REVISION-iodbc=	4
PKGNAME-mysql=	freeradius-mysql-$V
REVISION-mysql=	4
PKGNAME-pgsql=	freeradius-pgsql-$V
REVISION-pgsql=	2
PKGNAME-ldap=	freeradius-ldap-$V
REVISION-ldap=	3

CATEGORIES=	net security

MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/old/

HOMEPAGE=	http://www.freeradius.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2 - LGPLv2 - OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

CONFIGURE_STYLE=autoconf dest
AUTOCONF_VERSION=2.61
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
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
		--with-system-libltdl

TEST_TARGET=	tests
TEST_DEPENDS=freeradius-$V:net/freeradius
TEST_IS_INTERACTIVE=Yes # doesn't exit properly

MULTI_PACKAGES=	-main -ldap -mysql -pgsql -iodbc
SUBST_VARS+=	V

CFLAGS=		-I${LOCALBASE}/include

USE_GMAKE=	Yes
# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=	gnu

BUILD_DEPENDS=		net/net-snmp

LIB_DEPENDS-main =	databases/gdbm \
			devel/libtool,-ltdl
WANTLIB-main=		${WANTLIB} c pcap pthread readline \
			termcap gdbm>=3 ltdl>=4 crypto ssl

PSEUDO_FLAVORS=	no_ldap no_mysql no_pgsql no_iodbc
FLAVOR?=		

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-iodbc}
CONFIGURE_ARGS+=	--with-rlm_sql_iodbc
.else
CONFIGURE_ARGS+=	--without-rlm_sql_iodbc
.endif

LIB_DEPENDS-iodbc=	databases/iodbc
WANTLIB-iodbc=		iodbc>=2 pthread
RUN_DEPENDS-iodbc=	#empty


.if !${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--without-rlm_ldap
.endif

LIB_DEPENDS-ldap=	databases/openldap \
			${BASE_PKGPATH}
WANTLIB-ldap=		crypto ssl sasl2 \
			lber>=8 ldap_r>=8 freeradius-radius>=1 pthread
RUN_DEPENDS-ldap=	#empty

.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=	--without-rlm_sql_mysql
.endif

LIB_DEPENDS-mysql=	databases/mysql
WANTLIB-mysql=		crypto ssl m pthread z mysqlclient_r>=16
RUN_DEPENDS-mysql=	#empty

.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-rlm-sql-postgresql-include-dir=${LOCALBASE}/include/postgresql
.else
CONFIGURE_ARGS+=	--without-rlm_sql_postgresql
.endif

LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		pq>=2
RUN_DEPENDS-pgsql=	#empty

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i +=	freeradius-$V:net/freeradius
.endfor

post-configure:
	perl -pi -e 's,/etc/raddb,${SYSCONFDIR}/raddb,g' ${WRKSRC}/man/*/*
	${SUBST_CMD} ${WRKSRC}/src/modules/rlm_sql/drivers/rlm_sql_iodbc/configure

post-install:
	mv ${WRKINST}/etc/raddb ${PREFIX}/share/examples/freeradius

.for f in bin/radlast bin/radtest sbin/checkrad sbin/radwatch \
    share/examples/freeradius/dictionary share/examples/freeradius/radiusd.conf 
	perl -pi -e 's,\$${DESTDIR},,g' ${PREFIX}/$f
.endfor

	rm ${PREFIX}/lib/freeradius/*.la ${PREFIX}/lib/freeradius/*.a \
		${PREFIX}/lib/libfreeradius-eap-*.la

pre-test:
	perl -pi -e 's,\$${DESTDIR},${DESTDIR},g' ${WRKSRC}/raddb/radiusd.conf

.include <bsd.port.mk>
