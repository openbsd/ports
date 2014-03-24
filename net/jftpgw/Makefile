# $OpenBSD: Makefile,v 1.26 2014/03/24 16:42:32 naddy Exp $

COMMENT=	FTP proxy

DISTNAME=	jftpgw-0.13.5
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.mcknight.de/jftpgw/

HOMEPAGE=	http://www.mcknight.de/jftpgw/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-crypt \
		 --with-confpath="${SYSCONFDIR}" \
		 --with-logpath="/var/log"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jftpgw
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/jftpgw.conf \
		${PREFIX}/share/examples/jftpgw

.include <bsd.port.mk>
