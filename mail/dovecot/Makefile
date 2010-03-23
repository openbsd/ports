# $OpenBSD: Makefile,v 1.131 2010/03/23 21:32:07 pea Exp $

SHARED_ONLY=	Yes

COMMENT-server= compact IMAP/POP3 server
COMMENT-sieve=	Sieve mail filtering for Dovecot

V_MAJOR=	1.2
V_DOVECOT=	1.2.11
V_SIEVE=	0.1.15
V_MANAGESIEVE=	0.11.11

PKGNAME=	dovecot-${V_DOVECOT}
PKGNAME-server=	dovecot-${V_DOVECOT}
FULLPKGNAME-sieve= dovecot-sieve-${V_SIEVE}v0
FULLPKGPATH-sieve= ${PKGPATH},-sieve

DISTNAME=	dovecot-${V_DOVECOT}
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_MAJOR}/
MASTER_SITES0=	http://www.rename-it.nl/dovecot/${V_MAJOR}/

DISTFILES=	dovecot-${V_DOVECOT}.tar.gz \
		dovecot-${V_MAJOR}-sieve-${V_SIEVE}.tar.gz:0 \
		dovecot-${V_MAJOR}-managesieve-${V_MANAGESIEVE}.tar.gz:0 \
		${DIST_MANAGESIEVE}:0

DIST_MANAGESIEVE= dovecot-${V_DOVECOT}-managesieve-${V_MANAGESIEVE}.diff.gz

HOMEPAGE=	http://www.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-server=		c crypto gssapi krb5 ssl z
WANTLIB-sieve=		c crypto ssl

MODULES=	converters/libiconv
LIB_DEPENDS+=	bz2::archivers/bzip2

MULTI_PACKAGES=	-server
SUBPACKAGE?=	-server

PSEUDO_FLAVORS=	no_sieve
FLAVORS=	bdb ldap mysql postgresql sqlite
FLAVOR?=

CFLAGS+=	-I/usr/include/kerberosV -I${LOCALBASE}/include

USE_LIBTOOL=		Yes
# Should be 2.65
AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--localstatedir=/var \
			--with-gssapi \
			--with-pam=no \
			--with-shadow=no \
			--with-vpopmail=no
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

.if !${FLAVOR:L:Mno_sieve}
MULTI_PACKAGES+=	-sieve
SIEVE_DIR=		${WRKDIR}/dovecot-${V_MAJOR}-sieve-${V_SIEVE}
MANAGESIEVE_DIR=	${WRKDIR}/dovecot-${V_MAJOR}-managesieve-${V_MANAGESIEVE}
AUTOCONF_DIR+=		${WRKSRC} ${MANAGESIEVE_DIR}
RUN_DEPENDS-sieve=	::${PKGPATH}
LIB_DEPENDS-sieve=	${MODLIBICONV_LIB_DEPENDS}
PATCH_LIST=		patch-* managesieve-patch-*
.else
PATCH_LIST=		patch-* nosieve-patch-*
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
pre-patch:
	cd ${WRKSRC} && \
	gunzip -c ${DISTDIR}/${DIST_MANAGESIEVE} | patch -p1 2> /dev/null

post-configure:
	(cd ${WRKSRC}; ${MAKE_PROGRAM} dovecot-config)
	(cd ${SIEVE_DIR}; ${SETENV} ${CONFIGURE_ENV} \
		./configure --with-dovecot=${WRKSRC} \
		--mandir=${PREFIX}/man)
	(cd ${MANAGESIEVE_DIR}; ${SETENV} ${CONFIGURE_ENV} \
		./configure --with-dovecot=${WRKSRC} \
		--with-dovecot-sieve=${SIEVE_DIR})
.endif

pre-build:
	@${SUBST_CMD} ${WRKSRC}/dovecot-example.conf

.if !${FLAVOR:L:Mno_sieve}
post-build:
	(cd ${SIEVE_DIR}; ${MAKE_PROGRAM} ${MAKE_FLAGS})
	(cd ${MANAGESIEVE_DIR}; ${MAKE_PROGRAM} ${MAKE_FLAGS})
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/doc/dovecot-sql-example.conf \
		${WRKSRC}/doc/dovecot-ldap-example.conf \
		${WRKSRC}/doc/dovecot-db-example.conf \
		${WRKSRC}/dovecot-example.conf \
		${WRKSRC}/doc/dovecot-dict-sql-example.conf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh
.if !${FLAVOR:L:Mno_sieve}
	cd ${SIEVE_DIR} &&  env -i ${MAKE_ENV} \
		PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST} \
		TRUEPREFIX=${PREFIX} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
	cd ${MANAGESIEVE_DIR} && env -i ${MAKE_ENV} \
		PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST} \
		TRUEPREFIX=${PREFIX} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
.endif

.include <bsd.port.mk>
