# $OpenBSD: Makefile,v 1.11 2019/11/12 17:24:38 cwen Exp $

COMMENT=	clone of the Mastermind game

GH_TAGNAME=	v1.1.0
GH_ACCOUNT=	bderrly
GH_PROJECT=	braincurses
CATEGORIES=	games

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

do-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${CXX} ${CXXFLAGS} -std=c++11 \
	    -o braincurses main.cpp code.cpp braincurses.cpp -lcurses

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/braincurses ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/braincurses
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/braincurses

NO_TEST=	Yes

.include <bsd.port.mk>
