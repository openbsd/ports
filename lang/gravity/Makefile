# $OpenBSD: Makefile,v 1.1.1.1 2017/06/16 03:36:44 bcallah Exp $

COMMENT =	small, high performance language with a modern syntax
DISTNAME =	gravity-0.2.7.20170606
CATEGORIES =	lang

HOMEPAGE =	http://creolabs.com/gravity
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =	https://devio.us/~bcallah/source/

COMPILER =		clang
COMPILER_LANGS =	c

USE_GMAKE =	Yes

pre-configure:
	sed -i 's,-O2,${CFLAGS},g' ${WRKSRC}/Makefile ${WRKSRC}/api/Makefile
	sed -i 's,-std=gnu99,-std=gnu11,g' ${WRKSRC}/Makefile ${WRKSRC}/api/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gravity ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gravity
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/gravity

do-test:
	cd ${WRKSRC} && ./unittest test

.include <bsd.port.mk>
