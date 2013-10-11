# $OpenBSD: Makefile,v 1.25 2013/10/11 23:50:19 naddy Exp $

COMMENT=	FTP proxy

DISTNAME=	jftpgw-0.13.5
CATEGORIES=	net
MASTER_SITES=	http://www.mcknight.de/jftpgw/

HOMEPAGE=	http://www.mcknight.de/jftpgw/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c wrap

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= --enable-crypt \
		 --enable-libwrap \
		 --with-confpath="${SYSCONFDIR}" \
		 --with-logpath="/var/log"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jftpgw
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/jftpgw.conf \
		${PREFIX}/share/examples/jftpgw

.include <bsd.port.mk>
