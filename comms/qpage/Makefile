# $OpenBSD: Makefile,v 1.5 1999/11/30 06:11:43 kevlo Exp $

DISTNAME=	qpage-3.3
CATEGORIES=	comms

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.qpage.org/download/
EXTRACT_SUFX=	.tar.Z
GNU_CONFIGURE=  yes

pre-install:
		@${MV} ${WRKSRC}/example.cf ${WRKSRC}/example-qpage.cf
		@${MV} ${WRKSRC}/qpage.man ${WRKSRC}/qpage.1

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/qpage ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/qpage.1 ${PREFIX}/man/man1
		${INSTALL_DATA} ${WRKSRC}/example-qpage.cf ${PREFIX}/share

.include <bsd.port.mk>
