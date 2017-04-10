# $OpenBSD: Makefile,v 1.3 2017/04/10 11:45:28 sthen Exp $

COMMENT=	clone of the Mastermind game

DISTNAME=	braincurses-0.5b
CATEGORIES=	games
HOMEPAGE=	http://sourceforge.net/projects/braincurses/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=braincurses/}

WANTLIB=	c m ncurses ${LIBCXX}

do-build:
	cd ${WRKBUILD} && ${CXX} ${CXXFLAGS} -o braincurses \
	    curses/windows.cpp braincurses.cpp -lncurses

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/braincurses ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/braincurses
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/braincurses

NO_TEST=	Yes

.include <bsd.port.mk>
