# $OpenBSD: Makefile,v 1.47 2009/05/16 09:09:59 ajacoutot Exp $

COMMENT=	RFC 2222 SASL (Simple Authentication and Security Layer)

DISTNAME=	cyrus-sasl-2.1.23
SHARED_LIBS=	anonymous	2.22 \
		crammd5		2.22 \
		digestmd5	2.22 \
		gssapiv2	2.22 \
		ldapdb		2.22 \
		login		2.22 \
		ntlm		2.22 \
		otp		2.22 \
		plain		2.22 \
		sasl2		2.22 \
		sasldb		2.22 \
		sql		2.22
CATEGORIES=	security

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# see the COPYRIGHT file in package sources
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

WANTLIB=	asn1 c com_err crypto gssapi krb5

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS='${LDFLAGS}'
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-saslauthd="/var/sasl2" \
		--enable-gssapi="/usr" \
		--with-gss_impl="heimdal" \
		--with-plugindir=${PREFIX}/lib/sasl2 \
		--enable-login \
		--enable-static \
		--enable-ntlm \
		--enable-auth-sasldb \
		--disable-sample

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/saslauthd/config

FLAVORS=	db4 ldap mysql pgsql sqlite
FLAVOR?=

BRKFLAVORMSG=	choose either mysql, pgsql or sqlite
PKG_ARGS?=	-Dsql=0

.if ${FLAVOR:L:Mdb4}
CONFIGURE_ARGS+=--with-dblib=berkeley \
		--with-bdb-libdir="${LOCALBASE}/lib/db4" \
		--with-bdb-incdir="${LOCALBASE}/include/db4"
LIB_DEPENDS+=	lib/db4/db.>=4:db->=4,<5:databases/db/v4
.else
CONFIGURE_ARGS+=--with-dblib=ndbm \
		--without-bdb-libdir \
		--without-bdb-incdir
.endif

.if ${FLAVOR:L:Mldap}
WANTLIB+=	ssl
LIB_DEPENDS+=	ldap.>=2,lber:openldap-client->=2,<3:databases/openldap
CONFIGURE_ARGS+=--with-ldap=${LOCALBASE} \
		--enable-ldapdb
.else
CONFIGURE_ARGS+=--without-ldap
.endif

.if ${FLAVOR:L:Mmysql}
.if ${FLAVOR:L:Mpgsql} || ${FLAVOR:L:Msqlite}
BROKEN=		${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB+=	m ssl z
CONFIGURE_ARGS+=--enable-sql \
		--with-mysql \
		--without-pgsql \
		--without-sqlite
.endif

.if ${FLAVOR:L:Mpgsql}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Msqlite}
BROKEN=		${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	pq.>=3:postgresql-client-*:databases/postgresql
CONFIGURE_ARGS+=--enable-sql \
		--without-mysql \
		--with-pgsql \
		--without-sqlite
CFLAGS+=	-I${LOCALBASE}/include/postgresql
.endif

.if ${FLAVOR:L:Msqlite}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Mpgsql}
BROKEN=		${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	sqlite.>=8.6::databases/sqlite
CONFIGURE_ARGS+=--enable-sql \
		--without-mysql \
		--without-pgsql \
		--with-sqlite
.endif

pre-configure:
	@perl -pi -e "s,/usr/local/etc,${SYSCONFDIR},g" \
		${WRKSRC}/saslauthd/saslauthd.mdoc \
		${WRKSRC}/saslauthd/LDAP_SASLAUTHD

post-build:
	cd ${WRKBUILD}/saslauthd; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		testsaslauthd saslauthd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/{*.html,*.txt} ${PREFIX}/share/doc/sasl2
	${INSTALL_PROGRAM} ${WRKBUILD}/saslauthd/testsaslauthd ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sasl2
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Mpgsql} || ${FLAVOR:L:Msqlite}
	${INSTALL_DATA} ${FILESDIR}/Sendmail.conf-sql \
		${PREFIX}/share/examples/sasl2
.endif
.if ${FLAVOR:L:Mldap}
	${INSTALL_DATA} ${WRKSRC}/saslauthd/LDAP_SASLAUTHD \
		${PREFIX}/share/doc/sasl2
	sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' ${FILESDIR}/saslauthd.conf > \
		${PREFIX}/share/examples/sasl2/saslauthd.conf
.endif

.include <bsd.port.mk>
