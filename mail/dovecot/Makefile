# $OpenBSD: Makefile,v 1.167 2011/05/24 09:40:24 sthen Exp $

SHARED_ONLY=	Yes

COMMENT= compact IMAP/POP3 server

# Bump dovecot-pigeonhole every time you update to a new Dovecot version.
V_MAJOR=	2.0
V_DOVECOT=	2.0.13

DISTNAME=	dovecot-${V_DOVECOT}
REVISION=	1
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
WANTLIB=	${MODLIBICONV_WANTLIB} bz2 c crypto gssapi krb5 ssl z

MODULES=	converters/libiconv
LIB_DEPENDS+=	archivers/bzip2

CPPFLAGS=	-I/usr/include/kerberosV -I${LOCALBASE}/include

USE_LIBTOOL=	Yes
AUTOCONF_VERSION= 2.67
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-gssapi \
		--with-rundir=/var/dovecot \
		--with-statedir=/var/dovecot \
		--without-pam \
		--without-shadow \
		--without-vpopmail
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	ldap mysql postgresql sqlite
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=--with-ldap
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	lber ldap sasl2 asn1 com_err
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=--with-mysql
LIB_DEPENDS+=	databases/mysql
WANTLIB+=	m lib/mysql/mysqlclient>=10
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=--with-pgsql
LIB_DEPENDS+=	databases/postgresql
WANTLIB+=	pq>=4
.endif

.if ${FLAVOR:L:Msqlite}
CONFIGURE_ARGS+=--with-sqlite
LIB_DEPENDS+=	databases/sqlite3
WANTLIB+=	sqlite3
.endif

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
