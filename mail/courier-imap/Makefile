# $OpenBSD: Makefile,v 1.48 2006/08/03 13:09:09 espie Exp $ 

COMMENT=	"imap server for maildir format mailboxes"
COMMENT-pop3=	"pop3 server for maildir format mailboxes"
COMMENT-ldap=	"ldap authentication module for courier-imap"
COMMENT-mysql=	"mysql authentication module for courier-imap"
COMMENT-pgsql=	"pgsql authentication module for courier-imap"

COURIERVER=	3.0.5
DISTNAME=	courier-imap-${COURIERVER}
FULLPKGNAME=	courier-imap-${COURIERVER}p4
FULLPKGNAME-pop3= courier-pop3-${COURIERVER}p1
FULLPKGNAME-ldap= courier-ldap-${COURIERVER}p1
FULLPKGNAME-mysql= courier-mysql-${COURIERVER}p1
FULLPKGNAME-pgsql= courier-pgsql-${COURIERVER}p1

CATEGORIES=	mail

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.inter7.com/courierimap/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MULTI_PACKAGES=	-pop3
SUBPACKAGE?=
FLAVOR?=

COURIERCONF=	${SYSCONFDIR}/courier-imap
COURIERSTATE=	/var/run/courier-imap
SUBST_VARS=	COURIERSTATE COURIERCONF COURIERVER
EXAMPLE_DIR= 	${PREFIX}/share/examples/courier-imap
USE_GMAKE=	Yes

.if $(SUBPACKAGE) != "-pop3"
LIB_DEPENDS=	gdbm.2::databases/gdbm
.endif

CONFIGURE_STYLE= gnu old
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include" \
		CPPFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--disable-root-check --datadir=${PREFIX}/sbin \
		--with-userdb=${SYSCONFDIR}/userdb --with-authuserdb \
		--sysconfdir=${COURIERCONF} --with-authdaemon \
		--with-authdaemonvar=${COURIERSTATE} \
		--enable-workarounds-for-imap-client-bugs \
		--with-db=gdbm --with-authpwd \
		--localstatedir=${COURIERSTATE}

# mysql
PSEUDO_FLAVORS+=	no_mysql
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-authmysql
.else
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-authmysql \
			--with-mysql-libs=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
MYSQL_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
MYSQL_WANTLIB=		crypto ssl m z 
.endif

# openldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-authldap
.else
MULTI_PACKAGES+=	-ldap
CONFIGURE_ARGS+=	--with-authldap
LDAP_DEPENDS+=		ldap.>=2,lber.>=2:openldap-client-2.*:databases/openldap
.endif

# postgresql
PSEUDO_FLAVORS+=	no_pgsql
.if !${FLAVOR:L:Mno_pgsql}
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-pgsql-libs=${LOCALBASE}/lib \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
PGSQL_DEPENDS+=		pq.2:postgresql-client-*:databases/postgresql
PGSQL_WANTLIB=		m
.endif

# pop3 has no dependencies
POP3_DEPENDS=

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
LIB_DEPENDS+=		${${SUBPACKAGE:U:S/-//g}_DEPENDS}
WANTLIB+=		${${SUBPACKAGE:U:S/-//g}_WANTLIB}
RUN_DEPENDS=		:courier-imap-${COURIERVER}:mail/courier-imap
.  else
WANTLIB+=		ssl crypto
.  endif
.else
.for i in ${MULTI_PACKAGES}
LIB_DEPENDS+=           ${${i:U:S/-//g}_DEPENDS}
.endfor
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courier-imap
.for i in pop3d-ssl imapd-ssl pop3d imapd
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i.dist ${EXAMPLE_DIR}/$i
.endfor
.for i in imapd.cnf pop3d.cnf quotawarnmsg.example
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i ${EXAMPLE_DIR}
.endfor
.for i in mysql ldap pgsql daemon
	-${INSTALL_DATA} ${WRKINST}${COURIERCONF}/auth${i}rc.dist \
			${EXAMPLE_DIR}/auth${i}rc
.endfor
.for i in authmysql.html authmysql.myownquery authpostgres.html ldap
	-${INSTALL_DATA} ${WRKSRC}/authlib/README.${i} \
			${PREFIX}/share/doc/courier-imap
.endfor
.for i in cram pwd userdb
	${INSTALL_PROGRAM} ${WRKBUILD}/authlib/auth${i} \
			${PREFIX}/libexec/authlib
.endfor

.include <bsd.port.mk>
