# $OpenBSD: Makefile,v 1.28 2019/07/12 20:48:29 sthen Exp $

COMMENT=	FTP proxy

DISTNAME=	jftpgw-0.13.5
REVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.mcknight.de/jftpgw/

HOMEPAGE=	http://www.mcknight.de/jftpgw/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ARGS+= --enable-crypt \
		 --with-confpath="${SYSCONFDIR}" \
		 --with-logpath="/var/log"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jftpgw
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/jftpgw.conf \
		${PREFIX}/share/examples/jftpgw

.include <bsd.port.mk>
