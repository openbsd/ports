# $OpenBSD: Makefile,v 1.1.1.1 2012/11/05 22:20:37 sthen Exp $

COMMENT=	nyancat in your terminal

DISTNAME=	nyancat-20121007

CATEGORIES=	misc

HOMEPAGE=	https://github.com/klange/nyancat

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	http://spacehopper.org/mirrors/

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/nyancat-master

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
