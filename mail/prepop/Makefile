# $OpenBSD: Makefile,v 1.18 2017/07/23 09:26:28 espie Exp $

COMMENT=	simple interactive POP3 client

DISTNAME=	prepop-0.1b7
REVISION =	5
CATEGORIES=	mail

# GPL
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c m readline ${COMPILER_LIBCXX} termcap

MAKE_FLAGS= \
	CC='${CXX}' \
	CFLAGS='${CFLAGS} -c -DVERSION="$${VERSION}" -DDATE="$${DATE}"' \
	LDFLAGS='-lreadline -ltermcap'

ALL_TARGET=	compile link

NO_TEST=	Yes

post-patch:
	sed -i -e 's/<iostream\.h>/<iostream>/' ${WRKSRC}/*.cc ${WRKSRC}/*.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/prepop ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prepop
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/prepop

.include <bsd.port.mk>
