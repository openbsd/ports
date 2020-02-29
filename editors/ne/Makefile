# $OpenBSD: Makefile,v 1.12 2020/02/29 13:44:07 bcallah Exp $

COMMENT =	nice console editor
DISTNAME =	ne-3.3.0
CATEGORIES =	editors

HOMEPAGE =	http://ne.di.unimi.it/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m

MASTER_SITES =	http://ne.di.unimi.it/

USE_GMAKE =	Yes
MAKE_FILE =	makefile
MAKE_FLAGS =	CC="${CC}" OPTS="${CFLAGS}"
ALL_TARGET =	build

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/ne ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/ne.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/ne/{macros,syntax}
	${INSTALL_DATA} ${WRKSRC}/syntax/*.jsf ${PREFIX}/share/ne/syntax
	${INSTALL_DATA} ${WRKSRC}/macros/* ${PREFIX}/share/ne/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ne
	${INSTALL_DATA} \
		${WRKSRC}/{README.md,COPYING,NEWS,CHANGES,doc/ne.{txt,pdf}} \
		${PREFIX}/share/doc/ne

.include <bsd.port.mk>
