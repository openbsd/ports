# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:44 sthen Exp $

COMMENT=	nosuid, secure TCP/IP ping

DISTNAME=	poink
PKGNAME=	${DISTNAME}-1.6
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://lcamtuf.coredump.cx/

MAINTAINER=	Artur Skura <arturs@iidea.pl>

MASTER_SITES=	${HOMEPAGE}/soft/
EXTRACT_SUFX=	.zip

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS}'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/poink ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/ping.1 ${PREFIX}/man/man1/poink.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/poink
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/poink

.include <bsd.port.mk>
