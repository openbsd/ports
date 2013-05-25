# $OpenBSD: Makefile,v 1.47 2013/05/25 00:33:10 brad Exp $

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
PKGNAME-iodbc=	freeradius-iodbc-$V
PKGNAME-mysql=	freeradius-mysql-$V
REVISION-mysql=	0
PKGNAME-pgsql=	freeradius-pgsql-$V
PKGNAME-ldap=	freeradius-ldap-$V

CATEGORIES=	net security

MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/ \
		ftp://ftp.freeradius.org/pub/radius/old/

HOMEPAGE=	http://www.freeradius.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2 - LGPLv2 - OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	crypto ssl

CONFIGURE_STYLE=autoconf dest
AUTOCONF_VERSION=2.61
# we only patch {WRKSRC}/configure.in so there's no need
# to set AUTOCONF_DIR for the modules
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}"

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
		--with-rlm-krb5-include-dir=/usr/include/kerberosV \
		--with-system-libltdl

TEST_TARGET=	tests
TEST_DEPENDS=freeradius-$V:net/freeradius
TEST_IS_INTERACTIVE=Yes # doesn't exit properly

MULTI_PACKAGES=	-main
SUBST_VARS+=	V

USE_GMAKE=	Yes
# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=	gnu
USE_GROFF =	Yes

TAR=			${LOCALBASE}/bin/gtar

BUILD_DEPENDS=		archivers/gtar \
			net/net-snmp
LIB_DEPENDS-main =	databases/gdbm \
			devel/libtool,-ltdl
WANTLIB-main=		${WANTLIB} c com_err krb5 pcap pthread readline \
			termcap gdbm>=3 ltdl>=4

PSEUDO_FLAVORS=	no_ldap no_mysql no_pgsql no_iodbc
FLAVOR?=		

.if ${FLAVOR:Mno_iodbc}
CONFIGURE_ARGS+=	--without-rlm_sql_iodbc
.else
MULTI_PACKAGES+=	-iodbc
CONFIGURE_ARGS+=	--with-rlm_sql_iodbc
LIB_DEPENDS-iodbc=	databases/iodbc
WANTLIB-iodbc=		iodbc>=2 pthread
.endif

.if ${FLAVOR:Mno_ldap}
CONFIGURE_ARGS+=	--without-rlm_ldap
.else
MULTI_PACKAGES+=	-ldap
LIB_DEPENDS-ldap=	databases/openldap \
			${BASE_PKGPATH}
WANTLIB-ldap=		${WANTLIB} sasl2 asn1 com_err gssapi krb5 \
			lber>=8 ldap_r>=8 freeradius-radius>=1 pthread
.endif

.if ${FLAVOR:Mno_mysql}
CONFIGURE_ARGS+=	--without-rlm_sql_mysql
.else
MULTI_PACKAGES+=	-mysql
LIB_DEPENDS-mysql=	databases/mariadb
WANTLIB-mysql=		${WANTLIB} m pthread z mysqlclient_r>=16
.endif

.if ${FLAVOR:Mno_pgsql}
CONFIGURE_ARGS+=	--without-rlm_sql_postgresql
.else
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-rlm-sql-postgresql-include-dir=${LOCALBASE}/include/postgresql
LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		pq>=2
.endif

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i +=	freeradius-$V:net/freeradius
.endfor

post-configure:
	@perl -pi -e 's,/etc/raddb,${SYSCONFDIR}/raddb,g' ${WRKSRC}/man/*/*

post-install:
.for f in bin/radlast bin/radtest sbin/checkrad sbin/radwatch \
    share/examples/freeradius/dictionary share/examples/freeradius/radiusd.conf 
	@perl -pi -e 's,\$${DESTDIR},,g' ${PREFIX}/$f
.endfor
	rm ${PREFIX}/lib/freeradius/*.la ${PREFIX}/lib/freeradius/*.a

pre-test:
	perl -pi -e 's,\$${DESTDIR},${DESTDIR},g' ${WRKSRC}/raddb/radiusd.conf

.include <bsd.port.mk>
