# $OpenBSD: Makefile,v 1.2 2006/11/24 09:41:09 msf Exp $

COMMENT-main=	"fully featured POP3 and IMAP4 proxy server"
COMMENT-ldap=	"LDAP backend for perdition mail proxy"
COMMENT-mysql=  "MySQL backend for perdition mail proxy"
COMMENT-pgsql=	"PostgreSQL backend for perdition mail proxy"

DISTVER=	1.17
DISTNAME=	perdition-${DISTVER}
PKGNAME-main=	${DISTNAME}p0
PKGNAME-ldap=	perdition-ldap-${DISTVER}
PKGNAME-mysql=  perdition-mysql-${DISTVER}
PKGNAME-pgsql=  perdition-pgsql-${DISTVER}

CATEGORIES=	mail

SHARED_LIBS +=  jain                         0.0  # .0.0
SHARED_LIBS +=  perditiondb_bdb              0.0  # .0.0
SHARED_LIBS +=  perditiondb_nis              0.0  # .0.0
SHARED_LIBS +=  perditiondb_posix_regex      0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon           0.0  # .0.0

HOMEPAGE=	http://www.vergenet.net/linux/perdition/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/${DISTVER}/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CFLAGS+=-I${LOCALBASE}/include -I${LOCALBASE}/include/db4
CONFIGURE_ENV+="LDFLAGS=-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--enable-ssl \
			--with-ssl-includes=/usr/include \
			--with-ssl-libraries=/usr/lib \
			--disable-gdbm \
			--disable-odbc \
			--with-user=_perdition \
			--with-group=_perdition \
			--localstatedir=/var

NO_REGRESS=Yes

PSEUDO_FLAVORS=		no_bdb no_ldap no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES= 	-main

WANTLIB-main=       	c crypto ssl util
LIB_DEPENDS-main=	db.>=4.2::databases/db/v4 \
			vanessa_adt.>=0.3::devel/vanessa/adt \
			vanessa_logger.>=0.3::devel/vanessa/logger \
			vanessa_socket.>=0.3::devel/vanessa/socket \
			popt.>=0::devel/popt

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--disable-ldap
.else
SHARED_LIBS +=  	perditiondb_ldap             0.0  # .0.0
MULTI_PACKAGES+=	-ldap
CONFIGURE_ARGS+=	--with-ldap-libraries=${LOCALBASE}/lib \
			--with-ldap-includes=${LOCALBASE}/include \
			--disable-ldap-doc
LIB_DEPENDS-ldap=		sasl2::security/cyrus-sasl2 \
			ldap.>=2,lber.>=2:openldap-client-2.*:databases/openldap
WANTLIB-ldap= 		asn1 com_err crypto gssapi krb5 ssl util
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--disable-mysql
.else
SHARED_LIBS +=  	perditiondb_mysql            0.0  # .0.0
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
LIB_DEPENDS-mysql=	lib/mysql/mysqlclient.>=10::databases/mysql \
			vanessa_adt.>=0.3::devel/vanessa/adt \
			vanessa_logger.>=0.3::devel/vanessa/logger
WANTLIB-mysql=		crypto ssl util m z 
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--disable-pg
.else 
SHARED_LIBS +=  	perditiondb_postgresql       0.0  # .0.0
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--enable-pg
LIB_DEPENDS-pgsql=	pq.>=2:postgresql-client-*:databases/postgresql \
			vanessa_adt.>=0.3::devel/vanessa/adt \
			vanessa_logger.>=0.3::devel/vanessa/logger
WANTLIB-pgsql=		crypto ssl util
.endif

EXAMPLE_DIR=	${PREFIX}/share/examples/perdition/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@mv ${WRKINST}${SYSCONFDIR}/perdition/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
