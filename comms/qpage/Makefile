# $OpenBSD: Makefile,v 1.6 2000/02/16 10:52:09 espie Exp $

DISTNAME=	qpage-3.3
CATEGORIES=	comms

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.qpage.org/download/
EXTRACT_SUFX=	.tar.Z
GNU_CONFIGURE=  yes

pre-install:
		@mv ${WRKSRC}/example.cf ${WRKSRC}/example-qpage.cf
		@mv ${WRKSRC}/qpage.man ${WRKSRC}/qpage.1

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/qpage ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/qpage.1 ${PREFIX}/man/man1
		${INSTALL_DATA} ${WRKSRC}/example-qpage.cf ${PREFIX}/share

.include <bsd.port.mk>
