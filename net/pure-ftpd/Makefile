# $OpenBSD: Makefile,v 1.13 2002/05/15 17:42:25 espie Exp $

COMMENT=	"small, easy to set up, fast and very secure FTP server"

DISTNAME=	pure-ftpd-1.0.11
CATEGORIES=	net
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.dk.pureftpd.org/mirrors/pure-ftpd/releases/ \
		ftp://ftp.es.pureftpd.org/mirror/pureftpd/latest/releases/ \
		ftp://ftp.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.za.pureftpd.org/pub/pure-ftpd/releases/ \
		http://ftp.cn.pureftpd.org/pure-ftpd/releases/ \
		${MASTER_SITE_SOURCEFORGE:=pureftpd/}

HOMEPAGE=	http://www.pureftpd.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-everything \
		 --with-paranoidmsg

FLAVORS=	ldap mysql postgresql no_banner
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+= ldap.2,lber:openldap-client-2.*:databases/openldap
CONFIGURE_ARGS+= --with-ldap="${LOCALBASE}"
DOCS+=	README.LDAP pureftpd.schema
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
	README.Virtual-Users README.Authentication-Modules pure-ftpd.png

CONTRIB= xml_python_processors.txt sfv-crc-check.pl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pure-ftpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pure-ftpd
	${INSTALL_PROGRAM} ${WRKBUILD}/configuration-file/pure-config.pl \
		${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/configuration-file/pure-ftpd.conf \
		${PREFIX}/share/examples/pure-ftpd/pure-ftpd.conf.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pure-ftpd
.if defined(CONF_FILE) && !empty(CONF_FILE)
	cd ${WRKSRC}; ${INSTALL_DATA} ${CONF_FILE} \
		${PREFIX}/share/examples/pure-ftpd
.endif
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} ${CONTRIB} \
		${PREFIX}/share/examples/pure-ftpd

.include <bsd.port.mk>
