# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:26 sthen Exp $

COMMENT =	terminal-based tetris clone in vein of nintendo tetris
DISTNAME =	vitetris-0.57
CATEGORIES =	games
REVISION =	3

HOMEPAGE =	http://victornils.net/tetris/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses

MASTER_SITES =	http://victornils.net/tetris/

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			curses="-lncurses" \
			xlib=no

ALL_TARGET =	# empty
NO_TEST =	Yes

CFLAGS+=	-fsigned-char

post-extract:
	sed -i 's,Exec=tetris,Exec=vitetris,' ${WRKSRC}/vitetris.desktop
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vitetris
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/vitetris/vitetris-hiscores

.include <bsd.port.mk>
