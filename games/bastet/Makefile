# $OpenBSD: Makefile,v 1.16 2019/11/07 21:39:31 cwen Exp $

COMMENT =	bastard tetris

GH_ACCOUNT =	fph
GH_PROJECT =	bastet
GH_TAGNAME =	0.43.2
REVISION =	3

CATEGORIES =	games

HOMEPAGE =	http://fph.altervista.org/prog/bastet.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =	boost_program_options c curses m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/boost

NO_TEST =	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bastet ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/bastet.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bastet/
	cd ${WRKSRC}; ${INSTALL_DATA} AUTHORS LICENSE NEWS README \
	    ${PREFIX}/share/doc/bastet
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bastet/
	${INSTALL_DATA} /dev/null \
	    ${PREFIX}/share/examples/bastet/bastet.scores2

.include <bsd.port.mk>
