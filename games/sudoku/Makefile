# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:25 sthen Exp $

COMMENT=		console based sudoku

DISTNAME=		sudoku-1.0.1
REVISION =		2
CATEGORIES=		games

HOMEPAGE=		http://www.laurasia.com.au/sudoku/

# Public Domain
PERMIT_PACKAGE=	Yes
WANTLIB=		c curses

MASTER_SITES=		https://distfiles.nl/ \
			http://www.laurasia.com.au/downloads/
EXTRACT_SUFX=		.tgz

NO_TEST=		Yes

do-configure:
	@perl -i -pe 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/sudoku.6 \
		${WRKSRC}/sudoku.c

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/sudoku ${WRKSRC}/sudoku.c -lcurses
	
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sudoku ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sudoku.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/sudoku
	${INSTALL_DATA} ${WRKSRC}/template ${PREFIX}/share/sudoku
	${INSTALL_DATA} ${WRKSRC}/sudoku.html ${PREFIX}/share/sudoku

.include <bsd.port.mk>
