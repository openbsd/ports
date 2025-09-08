BROKEN=		post-build fails in dpb (or if stdin is redirected from /dev/null)

COMMENT=	chess program

DISTNAME=	gnuchess-6.3.0
REVISION=	0
DISTFILES=	${DISTNAME}.tar.gz book_1.02.pgn.gz

CATEGORIES=	games
HOMEPAGE=	https://www.gnu.org/software/chess/
SITES=		${SITE_GNU:=chess/}

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl m curses pthread readline ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/gettext,-runtime

BUILD_DEPENDS=	devel/help2man

CONFIGURE_STYLE= gnu

post-build:
	cd ${WRKSRC}/src && ln -sf ../../book_1.02.pgn
	cd ${WRKSRC}/src && ./gnuchess --addbook book_1.02.pgn

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/gnuchess \
		${PREFIX}/share/examples/gnuchess \
		${PREFIX}/share/gnuchess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnuchess
	# searches XDG_CONFIG_HOME or ~/.config, not system-wide so no @sample
	${INSTALL_DATA} ${WRKSRC}/doc/gnuchess.ini ${PREFIX}/share/examples/gnuchess
	${INSTALL_DATA} ${WRKSRC}/src/book.bin ${PREFIX}/share/gnuchess

.include <bsd.port.mk>
