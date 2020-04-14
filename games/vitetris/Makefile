# $OpenBSD: Makefile,v 1.11 2020/04/14 04:46:12 rsadowski Exp $

COMMENT =	terminal-based tetris clone in vein of nintendo tetris
CATEGORIES =	games

GH_TAGNAME =	v0.58.0
GH_ACCOUNT =	vicgeralds
GH_PROJECT =	vitetris

HOMEPAGE =	https://www.victornils.net/tetris/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c curses

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
