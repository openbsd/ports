# $OpenBSD: Makefile,v 1.5 2013/07/14 07:12:22 rfreeman Exp $

COMMENT =	terminal-based tetris clone in vein of nintendo tetris
DISTNAME =	vitetris-0.57
CATEGORIES =	games

HOMEPAGE =	http://victornils.net/tetris/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c ncurses

MASTER_SITES =	http://victornils.net/tetris/

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			curses="-lncurses" \
			xlib=no

ALL_TARGET =	# empty
NO_TEST =	Yes

CFLAGS+=	-fsigned-char

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vitetris
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/vitetris/vitetris-hiscores

.include <bsd.port.mk>
