# $OpenBSD: Makefile,v 1.29 2006/01/20 02:04:19 brad Exp $

COMMENT= 	"compact IMAP/POP3 server"

DISTNAME=	dovecot-1.0.beta1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://dovecot.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MODULES=	converters/libiconv

FLAVORS+=	ldap mysql postgresql
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-ldap
LIB_DEPENDS+=		lber,ldap::databases/openldap
WANTLIB+=		sasl2
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
WANTLIB+=		m z
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql
LIB_DEPENDS+=		pq.4::databases/postgresql
.endif

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+=--localstatedir=/var \
		--with-ioloop=kqueue \
		--with-notify=kqueue \
		--with-ssl=openssl \
		--with-ssldir=/etc/ssl \
		--without-pam \
		--without-shadow \
		--without-vpopmail
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@perl -pi -e s#_PREFIX_#\${PREFIX}#g ${WRKSRC}/dovecot-example.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/doc/dovecot-sql.conf \
		${WRKSRC}/doc/dovecot-ldap.conf \
		${WRKSRC}/dovecot-example.conf \
		${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh

.include <bsd.port.mk>
