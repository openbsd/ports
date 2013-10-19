# $OpenBSD: Makefile,v 1.4 2013/10/19 19:22:25 sthen Exp $

COMMENT=	nyancat in your terminal

V=		1.2.1
EPOCH=		0
DISTNAME=	${V}
DIST_SUBDIR=	nyancat
PKGNAME=	nyancat-${V}

CATEGORIES=	misc

HOMEPAGE=	https://github.com/klange/nyancat

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/archive/

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nyancat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/nyancat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
