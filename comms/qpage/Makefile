# $OpenBSD: Makefile,v 1.8 2000/04/09 17:36:10 espie Exp $

DISTNAME=	qpage-3.3
CATEGORIES=	comms
FAKE=No

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"license only grants use"
PERMIT_PACKAGE_FTP=	"license only grants use"
PERMIT_DISTFILES_CDROM=	"license only grants use"
PERMIT_DISTFILES_FTP=	Yes

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
