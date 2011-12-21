# $OpenBSD: Makefile,v 1.64 2011/12/21 14:36:15 pea Exp $

COMMENT=	RFC 2222 SASL (Simple Authentication and Security Layer)

DISTNAME=	cyrus-sasl-2.1.25

SHARED_LIBS += anonymous       2.22 # 2.25
SHARED_LIBS += crammd5         2.22 # 2.25
SHARED_LIBS += digestmd5       2.22 # 2.25
SHARED_LIBS += gssapiv2        2.22 # 2.25
SHARED_LIBS += ldapdb          2.22 # 2.25
SHARED_LIBS += login           2.22 # 2.25
SHARED_LIBS += ntlm            2.22 # 2.25
SHARED_LIBS += otp             2.22 # 2.25
SHARED_LIBS += plain           2.22 # 2.25
SHARED_LIBS += sasl2           2.23 # 2.25
SHARED_LIBS += sasldb          2.22 # 2.25
SHARED_LIBS += scram           0.0  # 2.25
SHARED_LIBS += sql             2.22 # 2.25

CATEGORIES=	security

REVISION=	1

HOMEPAGE=	http://www.cyrusimap.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# see the COPYRIGHT file in package sources
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.cyrusimap.org/cyrus-sasl/

WANTLIB += asn1 c com_err crypto gssapi krb5

USE_LIBTOOL=	Yes
USE_GROFF=	Yes

CFLAGS +=	-fPIC

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-saslauthd="/var/sasl2" \
		--enable-gssapi="/usr" \
		--with-gss_impl="heimdal" \
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

.if ${FLAVOR:L:Mdb4}
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

.if ${FLAVOR:L:Mldap}
WANTLIB+=	ssl
LIB_DEPENDS+=	openldap-client->=2,<3:databases/openldap
CONFIGURE_ARGS+=--with-ldap=${LOCALBASE} \
		--enable-ldapdb
WANTLIB +=	lber lber-2.4 ldap ldap-2.4
.else
CONFIGURE_ARGS+=--without-ldap
.endif

.if ${FLAVOR:L:Mmysql}
.if ${FLAVOR:L:Mpgsql} || ${FLAVOR:L:Msqlite3}
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

.if ${FLAVOR:L:Mpgsql}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Msqlite3}
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

.if ${FLAVOR:L:Msqlite3}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Mpgsql}
ERRORS+=		${BRKFLAVORMSG}
.endif
PKG_ARGS=	-Dsql=1
LIB_DEPENDS+=	databases/sqlite3
WANTLIB +=	sqlite3
CONFIGURE_ARGS+=--enable-sql \
		--without-mysql \
		--without-pgsql \
		--with-sqlite3
.endif

post-extract:
	rm ${WRKSRC}/cmulocal/sasl2.m4.orig

pre-configure:
	perl -pi -e "s,/usr/local/etc,${SYSCONFDIR},g" \
		${WRKSRC}/saslauthd/saslauthd.mdoc \
		${WRKSRC}/saslauthd/LDAP_SASLAUTHD
	perl -pi -e 's,-lresolv,,g' ${WRKSRC}/{,saslauthd}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/{*.html,*.txt} ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sasl2
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Mpgsql} || ${FLAVOR:L:Msqlite3}
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
