# $OpenBSD: Makefile,v 1.17 2005/07/23 19:34:22 brad Exp $

COMMENT= 	"compact IMAP/POP3 server"

DISTNAME=	dovecot-0.99.14
PKGNAME=	${DISTNAME}p0
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

FLAVORS+=      mysql postgresql
FLAVOR?=

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
WANTLIB+=		m z
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql
LIB_DEPENDS+=		pq.4::databases/postgresql
.endif

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+=--without-pam --without-shadow --without-vpopmail \
		--localstatedir=/var --with-ssldir=/etc/ssl --with-ssl=openssl
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

post-configure:
	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/dovecot-example.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/dovecot-example.conf ${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh

.include <bsd.port.mk>
