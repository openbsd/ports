# $OpenBSD: Makefile,v 1.119 2009/05/04 11:40:40 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-server= compact IMAP/POP3 server
COMMENT-sieve=	Sieve mail filtering for Dovecot

V_MAJOR=	1.1
V_DOVECOT=	1.1.14
V_SIEVE=	1.1.6

PKGNAME=	dovecot-${V_DOVECOT}
PKGNAME-server=	dovecot-${V_DOVECOT}p0
FULLPKGNAME-sieve= dovecot-sieve-${V_SIEVE}p5

DISTNAME=	dovecot-${V_DOVECOT}
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_MAJOR}/
MASTER_SITES0=	${HOMEPAGE}releases/sieve/

DISTFILES=	dovecot-${V_DOVECOT}.tar.gz \
		dovecot-sieve-${V_SIEVE}.tar.gz:0

HOMEPAGE=	http://www.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-server=		c crypto gssapi krb5 rpcsvc ssl z
WANTLIB-sieve=		c

MODULES=	converters/libiconv
LIB_DEPENDS+=	bz2::archivers/bzip2

MULTI_PACKAGES=	-server
SUBPACKAGE?=	-server

PSEUDO_FLAVORS=	no_sieve
FLAVORS=	bdb ldap mysql postgresql sqlite
FLAVOR?=

CFLAGS+=	-I/usr/include/kerberosV -I${LOCALBASE}/include

USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--localstatedir=/var \
			--with-gssapi \
			--with-pam=no \
			--with-shadow=no \
			--with-vpopmail=no
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

.if !${FLAVOR:L:Mno_sieve}
MULTI_PACKAGES+=	-sieve
SIEVE_DIR=		${WRKDIR}/dovecot-sieve-${V_SIEVE}
AUTOCONF_DIR+=		${WRKSRC} ${SIEVE_DIR}
RUN_DEPENDS-sieve=	::${BUILD_PKGPATH}
LIB_DEPENDS-sieve=	${MODLIBICONV_LIB_DEPENDS}
.endif

.if ${FLAVOR:L:Mbdb}
CONFIGURE_ARGS+=	--with-db
LIB_DEPENDS+=		db.>=5::databases/db/v4
CFLAGS+=		-I${LOCALBASE}/include/db4
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-ldap
LIB_DEPENDS+=		lber,ldap::databases/openldap
WANTLIB-server+=	sasl2 asn1 com_err
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql
LIB_DEPENDS+=		lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB-server+=	m
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql
LIB_DEPENDS+=		pq.>=4::databases/postgresql
.endif

.if ${FLAVOR:L:Msqlite}
CONFIGURE_ARGS+=	--with-sqlite
LIB_DEPENDS+=		sqlite3::databases/sqlite3
.endif

.if !${FLAVOR:L:Mno_sieve}
post-configure:
	(cd ${WRKSRC}; ${MAKE_PROGRAM} dovecot-config)
	(cd ${SIEVE_DIR}; ${SETENV} ${CONFIGURE_ENV} \
		./configure --with-dovecot=${WRKSRC})
.endif

pre-build:
	@${SUBST_CMD} ${WRKSRC}/dovecot-example.conf

.if !${FLAVOR:L:Mno_sieve}
post-build:
	(cd ${SIEVE_DIR}; ${MAKE_PROGRAM} ${MAKE_FLAGS})
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/doc/dovecot-sql-example.conf \
		${WRKSRC}/doc/dovecot-ldap-example.conf \
		${WRKSRC}/dovecot-example.conf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh
.if !${FLAVOR:L:Mno_sieve}
	cd ${SIEVE_DIR}/src/libsieve && ${INSTALL_PROGRAM} {sievec,sieved} \
		${PREFIX}/libexec/dovecot
	${INSTALL_DATA} \
		${SIEVE_DIR}/src/.libs/lib90_cmusieve_plugin.{a,la,so} \
		${PREFIX}/lib/dovecot/lda
.endif

.include <bsd.port.mk>
