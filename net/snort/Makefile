# $OpenBSD: Makefile,v 1.17 2001/07/29 19:56:52 bmc Exp $

COMMENT=	"highly flexible sniffer/basic NIDS"

DISTNAME=	snort-1.8.1-beta5
PKGNAME=	snort-1.8.1b5
CATEGORIES=	net security
NEED_VERSION=	1.421
MASTER_SITES=	${HOMEPAGE}/files/
MASTER_SITE_SUBDIR= files

HOMEPAGE=       http://www.snort.org

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

FLAVORS=	postgresql mysql smbalert flexresp
FLAVOR?=	

.if ${FLAVOR:L:Mflexresp}
LIB_DEPENDS+=	net::net/libnet
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --enable-flexresp
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pq.2::databases/postgresql
CONFIGURE_ARGS+= --with-postgresql="${LOCALBASE}"
.else
CONFIGURE_ARGS+= --without-postgresql
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	mysqlclient.10:mysql-client-3.23.*:databases/mysql
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
.else
CONFIGURE_ARGS+= --without-mysql
.endif

.if ${FLAVOR:L:Msmbalert}
BUILD_DEPENDS+=	smbclient::net/samba
RUN_DEPENDS+=	smbclient::net/samba
CONFIGURE_ARGS+= --enable-smbalerts
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/snort.conf ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/classification.config \
		 ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/*.rules ${PREFIX}/share/examples/snort

.include <bsd.port.mk>
