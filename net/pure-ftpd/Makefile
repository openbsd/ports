# $OpenBSD: Makefile,v 1.4 2001/12/27 20:13:45 brad Exp $

COMMENT=	"small, easy to set up, fast and very secure FTP server"

DISTNAME=	pure-ftpd-1.0.7
CATEGORIES=	net
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pureftpd

HOMEPAGE=	http://pureftpd.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-everything \
		 --with-paranoidmsg

FLAVORS=	ldap mysql postgresql no_banner
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+= ldap.2,lber:openldap-client-2.*:databases/openldap
CONFIGURE_ARGS+= --with-ldap="${LOCALBASE}"
DOCS+=	README.LDAP
CONF_FILE+= pureftpd-ldap.conf
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+= lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
DOCS+=	README.MySQL
CONF_FILE+= pureftpd-mysql.conf
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+= pq.2::databases/postgresql
CONFIGURE_ARGS+= --with-pgsql="${LOCALBASE}"
DOCS+=	README.PGSQL
CONF_FILE+= pureftpd-pgsql.conf
.endif

.if ${FLAVOR:L:Mno_banner}
CONFIGURE_ARGS+= --without-banner
.endif

DOCS+=	README README.Configuration-File README.Contrib \
	README.Virtual-Users poweredby.jpg

CONTRIB= xml_python_processors.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pure-ftpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pure-ftpd
	${INSTALL_PROGRAM} ${WRKSRC}/configuration-file/pure-config.pl \
		${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/configuration-file/pure-ftpd.conf \
		${PREFIX}/share/examples/pure-ftpd/pure-ftpd.conf.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pure-ftpd
.if defined(CONF_FILE) && !empty(CONF_FILE)
	cd ${WRKSRC}; ${INSTALL_DATA} ${CONF_FILE} \
		${PREFIX}/share/examples/pure-ftpd
.endif
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} ${CONTRIB} \
		${PREFIX}/share/examples/pure-ftpd

.include <bsd.port.mk>
