# $OpenBSD: Makefile,v 1.2 2003/07/23 06:03:00 jolan Exp $

COMMENT= 	"compact IMAP/POP3 server"
DISTNAME=	dovecot-0.99.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://dovecot.procontrol.fi/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	iconv

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.13
CONFIGURE_ARGS+=--without-pam --without-shadow --without-vpopmail \
		--localstatedir=/var --with-ssldir=/etc/ssl --with-ssl=openssl

post-configure:
	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/dovecot-example.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dovecot
	${INSTALL_DATA} ${WRKSRC}/doc/dovecot-openssl.cnf \
		${WRKSRC}/dovecot-example.conf ${PREFIX}/share/examples/dovecot
	${INSTALL_SCRIPT} ${WRKSRC}/doc/mkcert.sh \
		${PREFIX}/sbin/dovecot-mkcert.sh

.include <bsd.port.mk>
