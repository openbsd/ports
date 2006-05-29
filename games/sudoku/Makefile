# $OpenBSD: Makefile,v 1.1.1.1 2006/05/29 19:32:08 alek Exp $

COMMENT=		"console based sudoku"

DISTNAME=		sudoku-1.0.1
CATEGORIES=		games

HOMEPAGE=		http://www.laurasia.com.au/sudoku/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=		http://humppa.nl/distfiles/
EXTRACT_SUFX=		.tgz

NO_REGRESS=		Yes

do-configure:
	@perl -i -pe 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/sudoku.6 \
		${WRKSRC}/sudoku.c

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/sudoku ${WRKSRC}/sudoku.c -lcurses
	
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/sudoku ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sudoku.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/sudoku
	${INSTALL_DATA} ${WRKSRC}/template ${PREFIX}/share/sudoku
	${INSTALL_DATA} ${WRKSRC}/sudoku.html ${PREFIX}/share/sudoku

.include <bsd.port.mk>
