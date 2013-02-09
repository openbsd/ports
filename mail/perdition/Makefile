# $OpenBSD: Makefile,v 1.15 2013/02/09 14:49:51 sthen Exp $

COMMENT-main=	fully featured POP3 and IMAP4 proxy server
COMMENT-ldap=	LDAP backend for perdition mail proxy
COMMENT-mysql=  MySQL backend for perdition mail proxy
COMMENT-pgsql=	PostgreSQL backend for perdition mail proxy

DISTVER=	1.17.1
DISTNAME=	perdition-${DISTVER}
PKGNAME-main=	${DISTNAME}
PKGNAME-ldap=	perdition-ldap-${DISTVER}
REVISION-main =	2
REVISION-ldap =	1
REVISION-mysql =	0
REVISION-pgsql =	0
PKGNAME-mysql=  perdition-mysql-${DISTVER}
PKGNAME-pgsql=  perdition-pgsql-${DISTVER}

CATEGORIES=	mail

SHARED_LIBS +=  jain                         0.0  # .0.0
SHARED_LIBS +=  perditiondb_bdb              0.0  # .0.0
SHARED_LIBS +=  perditiondb_nis              0.0  # .0.0
SHARED_LIBS +=  perditiondb_posix_regex      0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon           0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon_base      0.0  # .0.0

HOMEPAGE=	http://www.vergenet.net/linux/perdition/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/${DISTVER}/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CFLAGS+=-I${LOCALBASE}/include -I${LOCALBASE}/include/db4
CONFIGURE_ENV+="LDFLAGS=-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--enable-ssl \
			--with-ssl-includes=/usr/include \
			--with-ssl-libraries=/usr/lib \
			--disable-gdbm \
			--disable-odbc \
			--with-user=_perdition \
			--with-group=_perdition

NO_REGRESS=Yes

PSEUDO_FLAVORS=		no_ldap no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES= 	-main

WANTLIB-main=       	c crypto ssl util db>=4.2 vanessa_adt>=0.3 \
			vanessa_logger>=0.3 vanessa_socket>=0.3 popt
LIB_DEPENDS-main=	databases/db/v4 \
			devel/vanessa/adt \
			devel/vanessa/logger \
			devel/vanessa/socket \
			devel/popt

.if ${FLAVOR:Mno_ldap}
CONFIGURE_ARGS+=	--disable-ldap
.else
SHARED_LIBS +=  	perditiondb_ldap             0.0  # .0.0
MULTI_PACKAGES+=	-ldap
CONFIGURE_ARGS+=	--with-ldap-libraries=${LOCALBASE}/lib \
			--with-ldap-includes=${LOCALBASE}/include \
			--disable-ldap-doc
LIB_DEPENDS-ldap=	security/cyrus-sasl2 \
			openldap-client->=2,<3:databases/openldap
WANTLIB-ldap= 		asn1 com_err crypto gssapi krb5 ssl util sasl2 \
			ldap>=2 lber>=2
.endif

.if ${FLAVOR:Mno_mysql}
CONFIGURE_ARGS+=	--disable-mysql
.else
SHARED_LIBS +=  	perditiondb_mysql            0.0  # .0.0
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
LIB_DEPENDS-mysql=	databases/mysql \
			devel/vanessa/adt \
			devel/vanessa/logger
WANTLIB-mysql=		crypto ssl util m z lib/mysql/mysqlclient>=10 \
			vanessa_adt>=0.3 vanessa_logger>=0.3
.endif

.if ${FLAVOR:Mno_pgsql}
CONFIGURE_ARGS+=	--disable-pg
.else 
SHARED_LIBS +=  	perditiondb_postgresql       0.0  # .0.0
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--enable-pg
LIB_DEPENDS-pgsql=	databases/postgresql \
			devel/vanessa/adt \
			devel/vanessa/logger
WANTLIB-pgsql=		crypto ssl util pq>=2 vanessa_adt>=0.3 \
			vanessa_logger>=0.3
.endif

EXAMPLE_DIR=	${PREFIX}/share/examples/perdition/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@mv ${WRKINST}${SYSCONFDIR}/perdition/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
