# $OpenBSD: Makefile,v 1.29 2012/04/08 16:36:09 ajacoutot Exp $

COMMENT=	chess program

DISTNAME=	gnuchess-6.0.1
DISTFILES=	${DISTNAME}.tar.gz book_1.02.pgn.gz

CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU:=chess/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses pthread readline stdc++

CONFIGURE_STYLE=	gnu

README=			${WRKSRC}/README
BOOK_FILE=		${WRKSRC}/src/book.bin

post-build:
		cd ${WRKSRC}/src && ln -sf ../../book_1.02.pgn
		cd ${WRKSRC}/src && \
		printf "book add book_1.02.pgn\nquit\n" | ./gnuchess ; echo

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/gnuchess
		${INSTALL_DATA} ${BOOK_FILE} ${PREFIX}/share/gnuchess
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnuchess
		${INSTALL_DATA} ${README} ${PREFIX}/share/doc/gnuchess

.include <bsd.port.mk>
