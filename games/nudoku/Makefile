# $OpenBSD: Makefile,v 1.1.1.1 2019/11/15 15:25:27 fcambus Exp $

COMMENT =	ncurses based sudoku game

V =		2.0.0
DISTNAME =	nudoku-${V}

CATEGORIES =	games

HOMEPAGE =	https://jubalh.github.io/nudoku/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv intl

MASTER_SITES =	https://github.com/jubalh/nudoku/releases/download/${V}/

LIB_DEPENDS =	converters/libiconv \
		devel/gettext,-runtime

CONFIGURE_STYLE = gnu

post-configure:
	@sed -i 's|"gettext.h"|<libintl.h>|' ${WRKSRC}/src/main.c \
		 ${WRKSRC}/src/sudoku.c

.include <bsd.port.mk>
