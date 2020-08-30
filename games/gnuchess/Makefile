# $OpenBSD: Makefile,v 1.48 2020/08/30 20:13:24 rsadowski Exp $

COMMENT=	chess program

DISTNAME=	gnuchess-6.2.7
DISTFILES=	${DISTNAME}.tar.gz book_1.02.pgn.gz

CATEGORIES=	games
HOMEPAGE=	https://www.gnu.org/software/chess/
MASTER_SITES=	${MASTER_SITE_GNU:=chess/}

MAINTAINER =	Martin Ziemer <horrad@horrad.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl m curses pthread readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/gettext,-runtime

BUILD_DEPENDS=	devel/help2man

CONFIGURE_STYLE=	gnu

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
