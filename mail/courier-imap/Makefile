# $OpenBSD: Makefile,v 1.13 2001/03/22 03:10:48 avsm Exp $ 

DISTNAME=	courier-imap-1.3.5
CATEGORIES=	mail
NEED_VERSION=	1.351
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= courier

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.inter7.com/courierimap/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	pop3 mysql ldap
FLAVOR?=

SEPARATE_BUILD=	concurrent
COURIERCONF=	${SYSCONFDIR}/courier-imap
COURIERSTATE=	/var/run/courier-imap
SUBST_VARS=	COURIERSTATE COURIERCONF
EXAMPLE_DIR= 	${PREFIX}/share/examples/courier-imap

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
.BEGIN:
	@echo "Conflicting flavors: You must choose either ldap or mysql."
	@exit 1
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=       --with-authmysql
LIB_DEPENDS+=          mysqlclient::databases/mysql
.else
CONFIGURE_ARGS+=       --without-authmysql
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=       --with-authldap
LIB_DEPENDS+=          ldap.2::databases/openldap
.else
CONFIGURE_ARGS+=       --without-authldap
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
.for i in pop3d-ssl imapd-ssl pop3d imapd
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i.dist ${EXAMPLE_DIR}/$i
.endfor
.for i in imapd.cnf pop3d.cnf quotawarnmsg.example authdaemonrc.dist
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/$i ${EXAMPLE_DIR}
.endfor

.include <bsd.port.mk>
