# $OpenBSD: Makefile,v 1.11 2001/02/28 14:32:08 brad Exp $

DISTNAME=	snort-1.7
CATEGORIES=	net security
NEED_VERSION=	1.348
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= snort

HOMEPAGE=       http://www.snort.org/

MAINTAINER=	Brian Caswell <bmc@mitre.org>

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
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --enable-flexresp
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pg::databases/postgresql
CONFIGURE_ARGS+= --with-postgresql="${PREFIX}/pgsql"
.else
CONFIGURE_ARGS+= --without-postgresql
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	mysqlclient.10::databases/mysql
CONFIGURE_ARGS+= --with-mysql="${PREFIX}"
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
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/examples/snort

.include <bsd.port.mk>
