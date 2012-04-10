# $OpenBSD: Makefile,v 1.184 2012/04/10 22:39:08 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-server=	compact IMAP/POP3 server
COMMENT-ldap=	LDAP authentication support for Dovecot
COMMENT-mysql=	MySQL authentication / dictionary support for Dovecot
COMMENT-postgresql= PostgreSQL authentication / dictionary support for Dovecot
COMMENT-sqlite=	SQLite authentication / dictionary support for Dovecot

# Bump dovecot-pigeonhole every time you update to a new Dovecot version.
V_MAJOR=	2.0
V_DOVECOT=	2.0.20

DISTNAME=	dovecot-${V_DOVECOT}
PKGNAME=	dovecot-${V_DOVECOT}
PKGNAME-server=	dovecot-${V_DOVECOT}
PKGNAME-ldap=	dovecot-ldap-${V_DOVECOT}
PKGNAME-mysql=	dovecot-mysql-${V_DOVECOT}
PKGNAME-postgresql= dovecot-postgresql-${V_DOVECOT}
PKGNAME-sqlite=	dovecot-sqlite-${V_DOVECOT}
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/${V_MAJOR}/

SHARED_LIBS=	dovecot-lda	0.0 \
		dovecot-login	0.0 \
		dovecot-sql	0.0 \
		dovecot-storage	0.0 \
		dovecot		0.0

HOMEPAGE=	http://www.dovecot.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-server=	asn1 bz2 c crypto gssapi krb5 ssl z ${MODLIBICONV_WANTLIB}
WANTLIB-ldap=	asn1 com_err crypto gssapi krb5 lber-2.4 ldap-2.4 sasl2 ssl
WANTLIB-mysql=	crypto m lib/mysql/mysqlclient>=10 ssl z
WANTLIB-postgresql= com_err crypto pq>=4 ssl
WANTLIB-sqlite=	sqlite3 z

MODULES=	converters/libiconv
LIB_DEPENDS+=	archivers/bzip2
LIB_DEPENDS-ldap= databases/openldap
RUN_DEPENDS-ldap= ${BASE_PKGPATH}=${V_DOVECOT}
LIB_DEPENDS-mysql= databases/mysql
RUN_DEPENDS-mysql= ${BASE_PKGPATH}=${V_DOVECOT}
LIB_DEPENDS-postgresql= databases/postgresql
RUN_DEPENDS-postgresql= ${BASE_PKGPATH}=${V_DOVECOT}
LIB_DEPENDS-sqlite= databases/sqlite3
RUN_DEPENDS-sqlite= ${BASE_PKGPATH}=${V_DOVECOT}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-gssapi \
		--with-rundir=/var/dovecot \
		--with-sql=plugin \
		--with-statedir=/var/dovecot \
		--without-pam \
		--without-shadow \
		--without-vpopmail
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PSEUDO_FLAVORS=	no_db no_ldap no_mysql no_postgresql no_sqlite
FLAVOR?=
.if ${FLAVOR:Mno_db}
FLAVOR+=	no_ldap no_mysql no_postgresql no_sqlite
.endif

MULTI_PACKAGES= -server
SUBPACKAGE?=	-server

.if !${FLAVOR:L:Mno_ldap}
MULTI_PACKAGES+=-ldap
.endif

.if !${FLAVOR:L:Mno_mysql}
MULTI_PACKAGES+=-mysql
.endif

.if !${FLAVOR:L:Mno_postgresql}
MULTI_PACKAGES+=-postgresql
.endif

.if !${FLAVOR:L:Mno_sqlite}
MULTI_PACKAGES+=-sqlite
.endif

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=--with-ldap=plugin
.endif

.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+=--with-mysql
.endif

.if ${BUILD_PACKAGES:M-postgresql}
CONFIGURE_ARGS+=--with-pgsql
.endif

.if ${BUILD_PACKAGES:M-sqlite}
CONFIGURE_ARGS+=--with-sqlite
.endif

post-extract:
	@${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/example-config/conf.d/10-mail.conf

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh
	@find ${PREFIX}/lib/dovecot -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib/dovecot -name '*.la' -print | xargs rm

.include <bsd.port.mk>
