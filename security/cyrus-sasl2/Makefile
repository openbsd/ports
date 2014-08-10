# $OpenBSD: Makefile,v 1.83 2014/08/10 09:58:06 espie Exp $

COMMENT=	RFC 2222 SASL (Simple Authentication and Security Layer)

DISTNAME=	cyrus-sasl-2.1.26
REVISION=	11

SHARED_LIBS += sasl2           3.0 # 3.0

CATEGORIES=	security

HOMEPAGE=	http://www.cyrusimap.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# see the COPYRIGHT file in package sources
PERMIT_PACKAGE_CDROM=	yes

MASTER_SITES=	ftp://ftp.cyrusimap.org/cyrus-sasl/

WANTLIB += c crypto

CFLAGS +=	-fPIC

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--without-pam \
		--with-saslauthd="/var/sasl2" \
		--with-plugindir=${PREFIX}/lib/sasl2 \
		--enable-login \
		--enable-ntlm \
		--enable-auth-sasldb \
		--disable-sample

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/saslauthd/config

FLAVORS=	db4 ldap mysql pgsql sqlite3
FLAVOR?=

BRKFLAVORMSG=	choose either mysql, pgsql or sqlite3
PKG_ARGS?=	-Dsql=0

.if ${FLAVOR:Mdb4}
CONFIGURE_ARGS+=--with-dblib=berkeley \
		--with-bdb-libdir="${LOCALBASE}/lib/db4" \
		--with-bdb-incdir="${LOCALBASE}/include/db4"
LIB_DEPENDS+=	databases/db/v4
WANTLIB +=	lib/db4/db>=4
.else
CONFIGURE_ARGS+=--with-dblib=ndbm \
		--without-bdb-libdir \
		--without-bdb-incdir
.endif

.if ${FLAVOR:Mldap}
WANTLIB+=	ssl
LIB_DEPENDS+=	openldap-client->=2,<3:databases/openldap
CONFIGURE_ARGS+=--with-ldap=${LOCALBASE} \
		--enable-ldapdb
WANTLIB +=	lber lber-2.4 ldap ldap-2.4
.else
CONFIGURE_ARGS+=--without-ldap
.endif

.if ${FLAVOR:Mmysql}
.if ${FLAVOR:Mpgsql} || ${FLAVOR:Msqlite3}
ERRORS+=	${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	databases/mysql
WANTLIB+=	m ssl z lib/mysql/mysqlclient>=10
CONFIGURE_ARGS+=--enable-sql \
		--with-mysql \
		--without-pgsql \
		--without-sqlite3
.endif

.if ${FLAVOR:Mpgsql}
.if ${FLAVOR:Mmysql} || ${FLAVOR:Msqlite3}
ERRORS+=	${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	databases/postgresql
WANTLIB +=	pq ssl
CONFIGURE_ARGS+=--enable-sql \
		--without-mysql \
		--with-pgsql \
		--without-sqlite3
CFLAGS+=	-I${LOCALBASE}/include/postgresql
.endif

.if ${FLAVOR:Msqlite3}
.if ${FLAVOR:Mmysql} || ${FLAVOR:Mpgsql}
ERRORS+=		${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
WANTLIB +=	sqlite3
CONFIGURE_ARGS+=--enable-sql \
		--without-mysql \
		--without-pgsql \
		--with-sqlite3
.endif

pre-configure:
	perl -pi -e "s,/usr/local/etc,${SYSCONFDIR},g" \
		${WRKSRC}/saslauthd/saslauthd.mdoc \
		${WRKSRC}/saslauthd/LDAP_SASLAUTHD
	perl -pi -e 's,-lresolv,,g' ${WRKSRC}/{,saslauthd}/configure

post-install:
	rm ${PREFIX}/lib/sasl2/*.a
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cyrus-sasl
	${INSTALL_DATA} ${WRKSRC}/doc/{*.html,*.txt} ${PREFIX}/share/doc/cyrus-sasl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyrus-sasl
.if ${FLAVOR:Mmysql} || ${FLAVOR:Mpgsql} || ${FLAVOR:Msqlite3}
	${INSTALL_DATA} ${FILESDIR}/Sendmail.conf-sql \
		${PREFIX}/share/examples/cyrus-sasl
.endif
.if ${FLAVOR:Mldap}
	${INSTALL_DATA} ${WRKSRC}/saslauthd/LDAP_SASLAUTHD \
		${PREFIX}/share/doc/cyrus-sasl
	${SUBST_DATA} ${FILESDIR}/saslauthd.conf \
		${PREFIX}/share/examples/cyrus-sasl/saslauthd.conf
.endif

.include <bsd.port.mk>
