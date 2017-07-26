# $OpenBSD: Makefile,v 1.6 2017/07/26 22:45:20 sthen Exp $

COMMENT=	clone of the Mastermind game

DISTNAME=	braincurses-0.5b
REVISION =	1
CATEGORIES=	games
HOMEPAGE=	http://sourceforge.net/projects/braincurses/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=braincurses/}

WANTLIB=	c m ncurses ${COMPILER_LIBCXX}

do-build:
	cd ${WRKBUILD} && ${CXX} ${CXXFLAGS} -o braincurses \
	    curses/windows.cpp braincurses.cpp -lncurses

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/braincurses ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/braincurses
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/braincurses

NO_TEST=	Yes

.include <bsd.port.mk>
