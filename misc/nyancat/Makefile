# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:57 espie Exp $

COMMENT=	nyancat in your terminal

DISTNAME=	nyancat-20121007

CATEGORIES=	misc

HOMEPAGE=	https://github.com/klange/nyancat

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/nyancat-master

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
