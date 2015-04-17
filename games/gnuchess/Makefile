# $OpenBSD: Makefile,v 1.35 2015/04/17 08:00:42 phessler Exp $

COMMENT=	chess program
BROKEN-sparc=	./gnuchess --addbook book_1.02.pgn ; cannot allocate memory

DISTNAME=	gnuchess-6.2.1
DISTFILES=	${DISTNAME}.tar.gz book_1.02.pgn.gz

CATEGORIES=	games
HOMEPAGE=	http://www.gnu.org/software/chess/
MASTER_SITES=	${MASTER_SITE_GNU:=chess/}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses pthread readline stdc++

MODULES=	devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV= 		PTHREAD_LIBS=-lpthread

README=			${WRKSRC}/README
BOOK_FILE=		${WRKSRC}/src/book.bin

post-build:
		cd ${WRKSRC}/src && ln -sf ../../book_1.02.pgn
		cd ${WRKSRC}/src && ./gnuchess --addbook book_1.02.pgn

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/gnuchess
		${INSTALL_DATA} ${BOOK_FILE} ${PREFIX}/share/gnuchess
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnuchess
		${INSTALL_DATA} ${README} ${PREFIX}/share/doc/gnuchess

.include <bsd.port.mk>
