# $OpenBSD: Makefile,v 1.5 2000/02/06 21:55:03 rohee Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.cdrom.com/pub/FreeBSD/distfiles/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queso
	${INSTALL_MAN} ${FILESDIR}/queso.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
