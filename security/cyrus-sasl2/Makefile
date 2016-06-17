# $OpenBSD: Makefile,v 1.90 2016/06/17 09:43:35 ajacoutot Exp $

COMMENT=		RFC 2222 SASL (Simple Authentication and Security Layer)

DISTNAME=		cyrus-sasl-2.1.26
REVISION=		17

SHARED_LIBS +=  sasl2                3.0      # 3.0

CATEGORIES=		security

HOMEPAGE=		http://www.cyrusimap.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# see the COPYRIGHT file in package sources
PERMIT_PACKAGE_CDROM=	yes

MASTER_SITES=		ftp://ftp.cyrusimap.org/cyrus-sasl/

WANTLIB += c crypto sqlite3

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/saslauthd/config

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--enable-sql \
			--enable-static \
			--without-pam \
			--with-saslauthd="/var/sasl2" \
			--with-sqlite3 \
			--with-plugindir=${PREFIX}/lib/sasl2 \
			--enable-login \
			--enable-ntlm \
			--enable-auth-sasldb \
			--disable-sample

CFLAGS +=		-fPIC

FLAVORS=		db4 gssapi ldap mysql pgsql
FLAVOR?=

.if ${FLAVOR:Mdb4}
CONFIGURE_ARGS +=	--with-dblib=berkeley \
			--with-bdb-libdir="${LOCALBASE}/lib/db4" \
			--with-bdb-incdir="${LOCALBASE}/include/db4"
LIB_DEPENDS +=		databases/db/v4
WANTLIB +=		lib/db4/db>=4
.else
CONFIGURE_ARGS +=	--with-dblib=ndbm \
			--without-bdb-libdir \
			--without-bdb-incdir
.endif

.if ${FLAVOR:Mgssapi}
CONFIGURE_ARGS +=	--enable-gssapi=${LOCALBASE}/heimdal
MODULES +=		security/heimdal
WANTLIB += com_err pthread
WANTLIB += heimdal/lib/gssapi
WANTLIB += heimdal/lib/heimntlm
WANTLIB += heimdal/lib/heimsqlite
.endif

.if ${FLAVOR:Mldap}
LIB_DEPENDS +=		databases/openldap
CONFIGURE_ARGS +=	--with-ldap=${LOCALBASE} \
			--enable-ldapdb
WANTLIB += lber lber-2.4 ldap ldap-2.4 ssl
.else
CONFIGURE_ARGS +=	--without-ldap
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS +=		databases/mariadb
WANTLIB+= m pthread ssl stdc++ z lib/mysql/mysqlclient
.else
CONFIGURE_ARGS +=	--without-mysql
.endif

.if ${FLAVOR:Mpgsql}
LIB_DEPENDS +=		databases/postgresql
CFLAGS +=		-I${LOCALBASE}/include/postgresql
WANTLIB += pq ssl
.else
CONFIGURE_ARGS +=	--without-pgsql
.endif

pre-configure:
	sed -i -e "s,/usr/local/etc,${SYSCONFDIR},g" \
		${WRKSRC}/saslauthd/saslauthd.mdoc \
		${WRKSRC}/saslauthd/LDAP_SASLAUTHD

post-install:
	rm ${PREFIX}/lib/sasl2/*.a
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cyrus-sasl
	${INSTALL_DATA} ${WRKSRC}/doc/{*.html,*.txt} ${PREFIX}/share/doc/cyrus-sasl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cyrus-sasl
	${INSTALL_DATA} ${FILESDIR}/Sendmail.conf-sql \
		${PREFIX}/share/examples/cyrus-sasl
.if ${FLAVOR:Mldap}
	${INSTALL_DATA} ${WRKSRC}/saslauthd/LDAP_SASLAUTHD \
		${PREFIX}/share/doc/cyrus-sasl
	${SUBST_DATA} ${FILESDIR}/saslauthd.conf \
		${PREFIX}/share/examples/cyrus-sasl/saslauthd.conf
.endif

.include <bsd.port.mk>
