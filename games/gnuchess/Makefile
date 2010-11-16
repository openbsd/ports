# $OpenBSD: Makefile,v 1.25 2010/11/16 11:23:27 espie Exp $

COMMENT=	Classic Gnu Chess

DISTNAME=	gnuchess-5.07
REVISION =	1
DISTFILES=	${DISTNAME}.tar.gz book_1.01.pgn.gz

CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU:=chess/}

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses pthread readline

CONFIGURE_STYLE=	gnu

MAKE_FLAGS+=		CFLAGS="${CFLAGS} -DBOOK_PREFIX=\\\"${TRUEPREFIX}\\\""

README=			${WRKSRC}/doc/README
BOOK_FILE=		${WRKSRC}/src/book.dat

post-build:
		cd ${WRKSRC}/src && ln -sf ../../book_1.01.pgn
		cd ${WRKSRC}/src && \
		printf "book add book_1.01.pgn\nquit\n" | ./gnuchess ; echo

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/gnuchess
		${INSTALL_DATA} ${BOOK_FILE} ${PREFIX}/share/gnuchess
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnuchess
		${INSTALL_DATA} ${README} ${PREFIX}/share/doc/gnuchess

.include <bsd.port.mk>
