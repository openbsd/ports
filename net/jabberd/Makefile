# $OpenBSD: Makefile,v 1.27 2006/08/03 23:15:57 espie Exp $

COMMENT=		"jabber server"
DISTNAME=		jabberd-2.0s11
CATEGORIES=		net
HOMEPAGE=		http://jabberd.jabberstudio.org/2/
MAINTAINER=		Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=		http://files.jabberstudio.org/jabberd2/ \
			http://jabberstudio.rediris.es/jabberd2/ \
			http://jabberstudio.2nw.net/jabberd2/

JABBERDUSER=		_jabberd
JABBERDGROUP=		_jabberd
JABBERDDIR=		/var/jabberd

CONFIG_DIR=		${SYSCONFDIR}/jabberd
EXAMPLES=		${PREFIX}/share/examples/jabberd

SUBST_VARS=		CONFIG_DIR EXAMPLES \
			JABBERDUSER JABBERDGROUP JABBERDDIR

STORAGES=		mysql postgresql db
FLAVORS=		${STORAGES} ldap
FLAVOR?=		mysql

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--localstatedir=/var \
			--enable-ssl \
			--disable-idn \
			--with-extra-include-path="${EXTRA_INCLUDE_PATH}" \
			--with-extra-library-path="${EXTRA_LIBRARY_PATH}"
EXTRA_INCLUDE_PATH=	${LOCALBASE}/include
EXTRA_LIBRARY_PATH=	${LOCALBASE}/lib

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS+=	--enable-mysql
.else
CONFIGURE_ARGS+=	--disable-mysql
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=		pq.>=4::databases/postgresql
CONFIGURE_ARGS+=	--enable-pgsql
.else
CONFIGURE_ARGS+=	--disable-pgsql
.endif

.if ${FLAVOR:L:Mdb}
LIB_DEPENDS+=		lib/db4/db.=4::databases/db/v4
CONFIGURE_ARGS+=	--enable-db
EXTRA_INCLUDE_PATH:=	${EXTRA_INCLUDE_PATH}:${LOCALBASE}/include/db4
.else
CONFIGURE_ARGS+=	--disable-db
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.>=8,lber.>=8:openldap-*->=2.3:databases/openldap
CONFIGURE_ARGS+=	--enable-ldap
WANTLIB+=		sasl2
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.for s in ${STORAGES}
.  if ${FLAVOR:L:M$s}
storage_flag=1
.  endif
.endfor
.if !defined(storage_flag)
ERRORS+=		"Fatal: You need to select at least one storage driver"
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/jabberd ${PREFIX}/sbin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/jabberd
.for dir in c2s resolver router s2s sm
	${INSTALL_PROGRAM} ${WRKSRC}/${dir}/${dir} ${PREFIX}/libexec/jabberd
.endfor
	${INSTALL_MAN} ${WRKSRC}/man/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA_DIR} ${EXAMPLES}/templates
	${INSTALL_DATA} ${WRKSRC}/etc/jabberd.cfg.dist ${EXAMPLES}/jabberd.cfg
	${INSTALL_DATA} ${WRKSRC}/etc/c2s.xml.dist ${EXAMPLES}/c2s.xml
	${INSTALL_DATA} ${WRKSRC}/etc/resolver.xml.dist ${EXAMPLES}/resolver.xml
	${INSTALL_DATA} ${WRKSRC}/etc/router-users.xml.dist ${EXAMPLES}/router-users.xml
	${INSTALL_DATA} ${WRKSRC}/etc/router.xml.dist ${EXAMPLES}/router.xml
	${INSTALL_DATA} ${WRKSRC}/etc/s2s.xml.dist ${EXAMPLES}/s2s.xml
	${INSTALL_DATA} ${WRKSRC}/etc/sm.xml.dist ${EXAMPLES}/sm.xml
	${INSTALL_DATA} ${WRKSRC}/etc/templates/roster.xml.dist ${EXAMPLES}/templates/roster.xml
.if ${FLAVOR:Mmysql}
	${INSTALL_DATA} ${WRKSRC}/tools/db-setup.mysql ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/tools/db-update.mysql ${EXAMPLES}
.endif
.if ${FLAVOR:Mpostgresql}
	${INSTALL_DATA} ${WRKSRC}/tools/db-setup.pgsql ${EXAMPLES}
.endif

.include <bsd.port.mk>
