# $OpenBSD: Makefile,v 1.164 2011/05/23 22:54:38 sthen Exp $

#
# Dont forget to bump the Sieve package when you
# update Dovecot !!
# When the Dovecot V_MAJOR will change, dont forget
# to report it in mail/dovecot-pigeonhole
#

SHARED_ONLY=	Yes

COMMENT= compact IMAP/POP3 server

V_MAJOR=	2.0
V_DOVECOT=	2.0.13

DISTNAME=	dovecot-${V_DOVECOT}
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
		--with-pam=no \
		--with-shadow=no \
		--with-vpopmail=no \
		--with-rundir=/var/dovecot \
		--with-statedir=/var/dovecot
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	bdb ldap mysql postgresql sqlite
FLAVOR?=

.if ${FLAVOR:L:Mbdb}
CONFIGURE_ARGS+=--with-db
LIB_DEPENDS+=	databases/db/v4
WANTLIB+=	db>=5
CPPFLAGS+=	-I${LOCALBASE}/include/db4
.endif

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
