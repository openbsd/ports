# $OpenBSD: Makefile,v 1.2 2015/04/20 14:06:54 bcallah Exp $

COMMENT =	nice console editor
DISTNAME =	ne-2.6
CATEGORIES =	editors

HOMEPAGE =	http://ne.di.unimi.it/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses m

MASTER_SITES =	http://ne.di.unimi.it/

MAKE_FILE =	makefile
MAKE_FLAGS =	CC="${CC}" OPTS="${CFLAGS}"
ALL_TARGET =	build

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/ne ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/ne.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/ne/syntax
	${INSTALL_DATA} ${WRKSRC}/syntax/*.jsf ${PREFIX}/share/ne/syntax
	${INSTALL_DATA} ${WRKSRC}/macros/* ${PREFIX}/share/ne
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ne
	${INSTALL_DATA} \
		${WRKSRC}/{README,COPYING,NEWS,CHANGES,doc/ne.{txt,pdf}} \
		${PREFIX}/share/doc/ne

.include <bsd.port.mk>
