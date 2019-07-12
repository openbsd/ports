# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:15 sthen Exp $

COMMENT =	console-based 52-card solitare game
DISTNAME =	bluemoon-2.12
CATEGORIES =	games
REVISION =	2

HOMEPAGE =	http://www.catb.org/~esr/bluemoon/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	http://www.catb.org/~esr/bluemoon/

RUN_DEPENDS =	devel/desktop-file-utils

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	bluemoon

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bluemoon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bluemoon.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/bluemoon.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/bluemoon.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
