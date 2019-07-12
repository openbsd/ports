# $OpenBSD: Makefile,v 1.78 2019/07/12 20:48:44 sthen Exp $

COMMENT=	small, easy to set up, fast and very secure FTP server

DISTNAME=	pure-ftpd-1.0.47
CATEGORIES=	net
MASTER_SITES=	http://download.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp4.fr.pureftpd.org/pub/pure-ftpd/releases/ \
		ftp://ftp.dk.pureftpd.org/mirrors/pure-ftpd/releases/ \
		ftp://ftp.nl.pureftpd.org/pub/pure-ftpd/releases/ \
		${MASTER_SITE_SOURCEFORGE:=pureftpd/}
REVISION=	1

HOMEPAGE=	http://www.pureftpd.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto iconv sodium ssl

LIB_DEPENDS=	converters/libiconv \
		security/libsodium

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-pie \
		 --with-everything \
		 --with-paranoidmsg \
		 --with-rfc2640 \
		 --with-tls

FLAVORS=	ldap mysql postgresql virtual_chroot
FLAVOR?=

.if ${FLAVOR:Mldap}
LIB_DEPENDS+= 	openldap-client->=2,<3:databases/openldap
WANTLIB +=	ldap>=2 lber
CONFIGURE_ARGS+= --with-ldap="${LOCALBASE}"
DOCS+=	README.LDAP pureftpd.schema
CONF_FILE+= pureftpd-ldap.conf
.endif

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=	databases/mariadb
WANTLIB +=	lib/mysql/mysqlclient m z
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
DOCS+=	README.MySQL
CONF_FILE+= pureftpd-mysql.conf
.endif

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=	databases/postgresql
WANTLIB +=	pq>=2 m z
CONFIGURE_ARGS+= --with-pgsql="${LOCALBASE}"
DOCS+=	README.PGSQL
CONF_FILE+= pureftpd-pgsql.conf
.endif

.if ${FLAVOR:Mvirtual_chroot}
CONFIGURE_ARGS+= --with-virtualchroot
.endif

DOCS+=	README README.Configuration-File README.TLS README.Virtual-Users \
	README.Authentication-Modules pure-ftpd.png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pure-ftpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pure-ftpd
	${INSTALL_DATA} ${WRKBUILD}/pure-ftpd.conf \
		${PREFIX}/share/examples/pure-ftpd/pure-ftpd.conf.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pure-ftpd
.if defined(CONF_FILE) && !empty(CONF_FILE)
	cd ${WRKSRC}; ${INSTALL_DATA} ${CONF_FILE} \
		${PREFIX}/share/examples/pure-ftpd
.endif

.include <bsd.port.mk>
