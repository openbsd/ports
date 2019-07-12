# $OpenBSD: Makefile,v 1.40 2019/07/12 20:47:36 sthen Exp $

COMMENT-main=	fully featured POP3 and IMAP4 proxy server
COMMENT-ldap=	LDAP backend for perdition mail proxy
COMMENT-mysql=	MySQL backend for perdition mail proxy
COMMENT-pgsql=	PostgreSQL backend for perdition mail proxy

DISTVER=	2.2
DISTNAME=	perdition-${DISTVER}
PKGNAME-main=	perdition-${DISTVER:S/-//}
PKGNAME-ldap=	perdition-ldap-${DISTVER:S/-//}
PKGNAME-mysql=	perdition-mysql-${DISTVER:S/-//}
PKGNAME-pgsql=	perdition-pgsql-${DISTVER:S/-//}
REVISION-ldap=	2
REVISION-main=	2
REVISION-mysql=	2
REVISION-pgsql=	2

CATEGORIES=	mail

HOMEPAGE=	http://horms.net/projects/perdition/
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

SHARED_LIBS +=  perditiondb_bdb              0.0  # .0.0
SHARED_LIBS +=  perditiondb_nis              0.0  # .0.0
SHARED_LIBS +=  perditiondb_posix_regex      0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon           0.0  # .0.0
SHARED_LIBS +=  perditiondb_daemon_base      0.0  # .0.0
SHARED_LIBS +=  perditiondb_ldap             0.0  # .0.0
SHARED_LIBS +=  perditiondb_mysql            0.0  # .0.0
SHARED_LIBS +=  perditiondb_postgresql       0.0  # .0.0

# GPLv2+ (included COPYING is v3, but all files with a
# copyright claim specify version 2 or above).
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}download/${DISTVER}/

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--enable-ssl \
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

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.arch.mk>

cWANTLIB=		lib/db4/db>=4 vanessa_logger>=1.0
cLIB_DEPENDS+=		databases/db/v4 \
			vanessa_logger->=0.0.10:devel/vanessa/logger

WANTLIB-main=		${cWANTLIB} \
			c crypto iconv idn intl popt ssl util \
			vanessa_adt>=1.0 vanessa_socket>=1.0
LIB_DEPENDS-main=	${cLIB_DEPENDS} \
			devel/popt devel/libidn \
			vanessa_adt->=0.0.9:devel/vanessa/adt \
			vanessa_socket->=0.0.12:devel/vanessa/socket

LIB_DEPENDS-ldap=	${cLIB_DEPENDS} security/cyrus-sasl2 \
			openldap-client->=2,<3:databases/openldap
WANTLIB-ldap=		crypto lber-2.4 ldap-2.4 sasl2 ssl util ${cWANTLIB}

.if !${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--disable-ldap
.else
CONFIGURE_ARGS+=	--with-ldap-libraries=${LOCALBASE}/lib \
			--with-ldap-includes=${LOCALBASE}/include \
			--disable-ldap-doc
.endif

LIB_DEPENDS-mysql=	${cLIB_DEPENDS} databases/mariadb \
			vanessa_adt->=0.0.9:devel/vanessa/adt
WANTLIB-mysql=		crypto pthread ssl ${COMPILER_LIBCXX} util m z \
			lib/mysql/mysqlclient ${cWANTLIB} \
			vanessa_adt>=1.0

.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=	--disable-mysql
.else
CONFIGURE_ARGS+=	--with-mysql-libraries=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
.endif

LIB_DEPENDS-pgsql=	${cLIB_DEPENDS} databases/postgresql \
			vanessa_adt->=0.0.9:devel/vanessa/adt
WANTLIB-pgsql=		crypto pq ssl util ${cWANTLIB} vanessa_adt>=1.0

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
