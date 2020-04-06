# $OpenBSD: Makefile,v 1.1.1.1 2020/04/06 11:05:27 fcambus Exp $

COMMENT =	classic snake game on the terminal

DISTNAME =	nsnake-3.0.1

CATEGORIES =	games

HOMEPAGE =	http://nsnake.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c curses m

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=nsnake/GNU-Linux/}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	V=1 CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
MAKE_FLAGS +=	CC="${CC}" COMMANDER_CFLAGS="${CFLAGS}"
MAKE_FLAGS +=	MANDIR=${PREFIX}/man/man6 PREFIX=${PREFIX}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
