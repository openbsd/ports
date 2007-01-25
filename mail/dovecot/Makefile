# $OpenBSD: Makefile,v 1.70 2007/01/25 07:48:39 jakob Exp $

SHARED_ONLY=	Yes

COMMENT-server= "compact IMAP/POP3 server"
COMMENT-sieve=	"sieve mail filtering for Dovecot"

V_DOVECOT=	1.0.rc19
V_SIEVE=	1.0

PKGNAME=	dovecot-${V_DOVECOT}
PKGNAME-server=	dovecot-${V_DOVECOT}
PKGNAME-sieve=	dovecot-sieve-${V_SIEVE}p1

DISTNAME=	dovecot-${V_DOVECOT}
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/

DISTFILES=	dovecot-${V_DOVECOT}.tar.gz \
		sieve/dovecot-sieve-${V_SIEVE}.tar.gz

HOMEPAGE=	http://www.dovecot.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# MIT/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-server=		c crypto ssl z
WANTLIB-sieve=

MODULES=	converters/libiconv

MULTI_PACKAGES=	-server
SUBPACKAGE?=	-server

PSEUDO_FLAVORS=	no_sieve
FLAVORS=	ldap mysql postgresql
FLAVOR?=

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var \
			--with-ioloop=kqueue \
			--with-ssl=openssl \
			--with-ssldir=/etc/ssl \
			--without-pam \
			--without-shadow \
			--without-vpopmail
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if !${FLAVOR:L:Mno_sieve}
MULTI_PACKAGES+=	-sieve
SIEVE_DIR=		${WRKDIR}/dovecot-sieve-${V_SIEVE}
AUTOCONF_DIR+=		${SIEVE_DIR}
RUN_DEPENDS-sieve=	::${BUILD_PKGPATH}
LIB_DEPENDS-sieve=	${MODLIBICONV_LIB_DEPENDS}
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-ldap
LIB_DEPENDS+=		lber,ldap::databases/openldap
WANTLIB-server+=	sasl2 asn1 com_err gssapi krb5
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

.if !${FLAVOR:L:Mno_sieve}
post-configure:
	(cd ${WRKSRC}; ${MAKE_PROGRAM} dovecot-config)
	(cd ${SIEVE_DIR}; ${SETENV} ${CONFIGURE_ENV} \
		./configure --with-dovecot=${WRKSRC})
.endif

pre-build:
	@perl -pi -e s#_PREFIX_#\${PREFIX}#g ${WRKSRC}/dovecot-example.conf

.if !${FLAVOR:L:Mno_sieve}
post-build:
	(cd ${SIEVE_DIR}; ${MAKE_PROGRAM} ${MAKE_FLAGS})
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/doc/dovecot-sql.conf \
		${WRKSRC}/doc/dovecot-ldap.conf \
		${WRKSRC}/dovecot-example.conf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh
.if !${FLAVOR:L:Mno_sieve}
	${INSTALL_DATA} \
		${SIEVE_DIR}/src/.libs/lib90_cmusieve_plugin.so \
		${PREFIX}/lib/dovecot/lda
.endif

.include <bsd.port.mk>
