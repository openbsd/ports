# $OpenBSD: Makefile,v 1.28 2013/11/15 10:10:02 sthen Exp $

COMMENT-main=	fully featured POP3 and IMAP4 proxy server
COMMENT-ldap=	LDAP backend for perdition mail proxy
COMMENT-mysql=  MySQL backend for perdition mail proxy
COMMENT-pgsql=	PostgreSQL backend for perdition mail proxy

DISTVER=	1.19-rc5
REVISION=	4
REVISION-main=	5
REVISION-mysql=	5
DISTNAME=	perdition-${DISTVER}
PKGNAME-main=	perdition-${DISTVER:S/-//}
PKGNAME-ldap=	perdition-ldap-${DISTVER:S/-//}
PKGNAME-mysql=  perdition-mysql-${DISTVER:S/-//}
PKGNAME-pgsql=  perdition-pgsql-${DISTVER:S/-//}

CATEGORIES=	mail

SHARED_LIBS +=  jain                         0.0  # .0.0
SHARED_LIBS +=  perditiondb_bdb              0.0  # .0.0
SHARED_LIBS +=  perditiondb_nis              0.0  # .0.0
SHARED_LIBS +=  perditiondb_posix_regex      0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon           0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon_base      0.0  # .0.0
SHARED_LIBS +=  perditiondb_ldap             0.0  # .0.0
SHARED_LIBS +=  perditiondb_mysql            0.0  # .0.0
SHARED_LIBS +=  perditiondb_postgresql       0.0  # .0.0

HOMEPAGE=	http://www.vergenet.net/linux/perdition/

# GPLv2+ (included COPYING is v3, but all files with a
# copyright claim specify version 2 or above).
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/${DISTVER}/

MODULES=	devel/gettext

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-ssl \
			--disable-cdb \
			--disable-gdbm \
			--disable-odbc \
			--disable-pam \
			--with-ssl-includes=/usr/include \
			--with-ssl-libraries=/usr/lib \
			--with-user=_perdition \
			--with-group=_perdition

PSEUDO_FLAVORS=		no_ldap no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main -mysql -pgsql -ldap

.include <bsd.port.arch.mk>

WANTLIB-main=		${MODGETTEXT_WANTLIB} \
			c crypto ssl util lib/db4/db>=4 vanessa_adt>=1.0 \
			vanessa_logger>=1.0 vanessa_socket>=1.0 popt idn
LIB_DEPENDS-main=	databases/db/v4 \
			vanessa_adt->=0.0.9:devel/vanessa/adt \
			vanessa_logger->=0.0.10:devel/vanessa/logger \
			vanessa_socket->=0.0.12:devel/vanessa/socket \
			devel/popt \
			devel/libidn

LIB_DEPENDS-ldap=	security/cyrus-sasl2 \
			openldap-client->=2,<3:databases/openldap \
			vanessa_logger->=0.0.10:devel/vanessa/logger
WANTLIB-ldap=		asn1 com_err crypto gssapi krb5 ssl util sasl2 \
			heimbase lber-2.4 ldap-2.4 \
			wind roken vanessa_logger

.if !${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--disable-ldap
.else
CONFIGURE_ARGS+=	--with-ldap-libraries=${LOCALBASE}/lib \
			--with-ldap-includes=${LOCALBASE}/include \
			--disable-ldap-doc
.endif

LIB_DEPENDS-mysql=	databases/mysql \
			devel/vanessa/adt \
			devel/vanessa/logger
WANTLIB-mysql=		crypto ssl util m z lib/mysql/mysqlclient>=10 \
			vanessa_adt>=1.0 vanessa_logger>=1.0

.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=	--disable-mysql
.else
CONFIGURE_ARGS+=	--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
.endif

LIB_DEPENDS-pgsql=	databases/postgresql \
			devel/vanessa/adt \
			devel/vanessa/logger
WANTLIB-pgsql=		crypto ssl util pq>=2 vanessa_adt>=1.0 \
			vanessa_logger>=1.0 asn1 com_err heimbase \
			krb5 roken wind

.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--disable-pg
.else
CONFIGURE_ARGS+=	--enable-pg
.endif

EXAMPLE_DIR=	${PREFIX}/share/examples/perdition/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@mv ${WRKINST}${SYSCONFDIR}/perdition/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
