# $OpenBSD: Makefile,v 1.6 2014/10/16 15:48:58 sthen Exp $

COMMENT=	nyancat in your terminal

GH_ACCOUNT=	klange
GH_PROJECT=	nyancat
GH_TAGNAME=	1.4.4
GH_COMMIT=	c502754f9b79b03c912815f6139ccfcc75ecf513
WRKDIST=	${WRKDIR}/nyancat-${GH_COMMIT}

DISTNAME=	nyancat-${GH_TAGNAME}

CATEGORIES=	misc

HOMEPAGE=	https://github.com/klange/nyancat

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/archive/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
