# $OpenBSD: Makefile,v 1.44 2009/11/15 17:47:36 sthen Exp $

COMMENT=	small, easy to set up, fast and very secure FTP server

DISTNAME=	pure-ftpd-1.0.26
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp2.fr.pureftpd.org/pub/mirrors/ftp.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp3.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp4.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.dk.pureftpd.org/mirrors/pure-ftpd/releases/ \
		ftp://ftp.es.pureftpd.org/mirror/pure-ftpd/releases/ \
		ftp://ftp.nl.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		${MASTER_SITE_SOURCEFORGE:=pureftpd/}

HOMEPAGE=	http://www.pureftpd.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-everything \
		 --with-paranoidmsg \
		 --with-rfc2640 \
		 --with-tls

MODULES=	converters/libiconv

FLAVORS=	ldap mysql postgresql virtual_chroot
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+= ldap.>=2,lber:openldap-client->=2,<3:databases/openldap
CONFIGURE_ARGS+= --with-ldap="${LOCALBASE}"
DOCS+=	README.LDAP pureftpd.schema
CONF_FILE+= pureftpd-ldap.conf
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+= lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
DOCS+=	README.MySQL
CONF_FILE+= pureftpd-mysql.conf
WANTLIB+=	m z
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+= pq.>=2::databases/postgresql
CONFIGURE_ARGS+= --with-pgsql="${LOCALBASE}"
DOCS+=	README.PGSQL
CONF_FILE+= pureftpd-pgsql.conf
WANTLIB+=	m z
.endif

.if ${FLAVOR:L:Mvirtual_chroot}
CONFIGURE_ARGS+= --with-virtualchroot
.endif

DOCS+=	README README.Configuration-File README.Contrib README.TLS \
	README.Virtual-Users README.Authentication-Modules pure-ftpd.png

CONTRIB= xml_python_processors.txt pure-vpopauth.pl

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
