# $OpenBSD: Makefile,v 1.20 2001/09/28 19:06:30 jakob Exp $ 

MULTI_PACKAGES=	-pop3

COMMENT=	"imap server for maildir format mailboxes"
COMMENT-pop3=	"pop3 server for maildir format mailboxes"

COURIERVER=	1.3.8.2
DISTNAME=	courier-imap-${COURIERVER}
PKGNAME-pop3=	courier-pop3-${COURIERVER}

CATEGORIES=	mail
NEED_VERSION=	1.422

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= courier

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.inter7.com/courierimap/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	mysql ldap
FLAVOR?=

SEPARATE_BUILD=	concurrent
COURIERCONF=	${SYSCONFDIR}/courier-imap
COURIERSTATE=	/var/run/courier-imap
SUBST_VARS=	COURIERSTATE COURIERCONF COURIERVER
EXAMPLE_DIR= 	${PREFIX}/share/examples/courier-imap
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu old
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--disable-root-check --datadir=${PREFIX}/sbin \
		--with-userdb=${SYSCONFDIR}/userdb --with-authuserdb \
		--sysconfdir=${COURIERCONF} --with-authdaemon \
		--with-authdaemonvar=${COURIERSTATE} \
		--enable-workarounds-for-imap-client-bugs 

.if ${FLAVOR:L:Mmysql} && ${FLAVOR:L:Mldap}
ERRORS+= "Fatal: Conflicting flavor: You must choose either ldap or mysql."
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-authmysql --with-mysql-libs=${LOCALBASE}/lib/mysql
LIB_DEPENDS+=		mysqlclient.10:mysql-client-3.23.*:databases/mysql
.else
CONFIGURE_ARGS+=	--without-authmysql
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-authldap
LIB_DEPENDS+=		ldap.2:openldap-client-2.*:databases/openldap
.else
CONFIGURE_ARGS+=	--without-authldap
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
.for i in pop3d-ssl imapd-ssl pop3d imapd
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i.dist ${EXAMPLE_DIR}/$i
.endfor
.for i in imapd.cnf pop3d.cnf quotawarnmsg.example
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i ${EXAMPLE_DIR}
.endfor
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/authdaemonrc.dist ${EXAMPLE_DIR}/authdaemonrc

.include <bsd.port.mk>

.if ${SUBPACKAGE} == "-pop3"
RUN_DEPENDS+=	${LOCALBASE}/bin/imapd:courier-imap-${COURIERVER}:mail/courier-imap
.endif
