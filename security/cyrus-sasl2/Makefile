# $OpenBSD: Makefile,v 1.31 2005/12/18 10:37:26 jakob Exp $

COMMENT=	"RFC 2222 SASL (Simple Authentication and Security Layer)"

VERSION=	2.1.21
LIBVERSION=	2.21

DISTNAME=	cyrus-sasl-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	security

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		asn1 c com_err crypto gssapi krb5

SUBST_VARS+=		LIBVERSION
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS}'
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_ARGS+=	--with-saslauthd="/var/sasl2" \
			--enable-gssapi="/usr" \
			--with-gss_impl="heimdal" \
		 	--with-plugindir=${PREFIX}/lib/sasl2 \
			--enable-login \
			--enable-static \
			--disable-sample

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/saslauthd/config

FLAVORS=	db4 ldap mysql pgsql sqlite
FLAVOR?=

.if ${FLAVOR:L:Mdb4}
CONFIGURE_ARGS+=	--with-dblib=berkeley \
			--with-bdb-libdir="${LOCALBASE}/lib/db4" \
			--with-bdb-incdir="${LOCALBASE}/include/db4"
LIB_DEPENDS=		lib/db4/db.=4:db-4.*:databases/db/v4
.else
CONFIGURE_ARGS+=	--with-dblib=ndbm \
			--without-bdb-libdir \
			--without-bdb-incdir
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.2,lber:openldap-client-2.*:databases/openldap
CONFIGURE_ARGS+=	--with-ldap=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--without-ldap
.endif

.if ${FLAVOR:L:Mmysql}
.if ${FLAVOR:L:Mpgsql} || ${FLAVOR:L:Msqlite}
BROKEN=			choose either mysql or pgsql or sqlite
.endif
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
WANTLIB+=		m ssl z
CONFIGURE_ARGS+=	--enable-sql \
			--with-mysql \
			--without-pgsql \
			--without-sqlite
.endif

.if ${FLAVOR:L:Mpgsql}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Msqlite}
BROKEN=			choose either mysql or pgsql or sqlite
.endif
LIB_DEPENDS+=		pq.3:postgresql-client-*:databases/postgresql
CONFIGURE_ARGS+=	--enable-sql \
			--without-mysql \
			--with-pgsql \
			--without-sqlite
CFLAGS+=		-I${LOCALBASE}/include/postgresql
.endif

.if ${FLAVOR:L:Msqlite}
.if ${FLAVOR:L:Mmysql} || ${FLAVOR:L:Mpgsql}
BROKEN=			choose either mysql or pgsql or sqlite
.endif
LIB_DEPENDS=		sqlite.8.6::databases/sqlite
CONFIGURE_ARGS+=	--enable-sql \
			--without-mysql \
			--without-pgsql \
			--with-sqlite
.endif
 

post-build:
	cd ${WRKBUILD}/saslauthd; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} testsaslauthd \
	saslauthd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl2
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sasl2
	${INSTALL_PROGRAM} ${WRKBUILD}/saslauthd/testsaslauthd ${PREFIX}/sbin

.include <bsd.port.mk>
