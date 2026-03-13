COMMENT=	chess program

DISTNAME=	gnuchess-6.2.11
DISTFILES=	${DISTNAME}.tar.gz book_1.02.pgn.gz

CATEGORIES=	games
HOMEPAGE=	https://www.gnu.org/software/chess/
SITES=		${SITE_GNU:=chess/}

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

EPOCH=		0

WANTLIB += c iconv intl m curses pthread readline ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/gettext,-runtime

BUILD_DEPENDS=	devel/help2man

CONFIGURE_STYLE= gnu

post-build:
	cd ${WRKSRC}/src && ln -sf ../../book_1.02.pgn
	# if 'addbook' fails with stdin redirected, it will probably also
	# fail in DPB builds (problem introduced in 6.3 resulted in backout).
	cd ${WRKSRC}/src && ./gnuchess --addbook book_1.02.pgn < /dev/null

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/gnuchess \
		${PREFIX}/share/gnuchess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnuchess
	${INSTALL_DATA} ${WRKSRC}/src/book.bin ${PREFIX}/share/gnuchess

# XXX 6.3 moves from reading /usr/local/share/gnuchess/gnuchess.ini to
# XDG_CONFIG_HOME (normally ~/.config) and doesn't have the usual fallback
# to system dirs.
#	${INSTALL_DATA_DIR} \
#		${PREFIX}/share/examples/gnuchess
#	# searches XDG_CONFIG_HOME or ~/.config, not system-wide so no @sample
#	${INSTALL_DATA} ${WRKSRC}/src/gnuchess.ini ${PREFIX}/share/examples/gnuchess

.include <bsd.port.mk>
