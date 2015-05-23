# $OpenBSD: Makefile,v 1.10 2015/05/23 16:34:40 czarkoff Exp $

PORTROACH=      limit:^[0-9].*

COMMENT=	nyancat in your terminal

GH_ACCOUNT=	klange
GH_PROJECT=	nyancat
GH_TAGNAME=	1.4.4
EPOCH =		0
WRKDIST=	${WRKDIR}/nyancat-c502754f9b79b03c912815f6139ccfcc75ecf513

DISTNAME=	nyancat-${GH_TAGNAME}

CATEGORIES=	misc

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/archive/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
